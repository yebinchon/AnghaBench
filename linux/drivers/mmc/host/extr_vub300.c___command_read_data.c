
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {scalar_t__ status; } ;
struct TYPE_6__ {scalar_t__ expires; } ;
struct vub300_mmc_host {int datasize; int data_inp_ep; int udev; TYPE_1__ sg_request; TYPE_3__ sg_transfer_timer; int command_res_urb; int command_out_urb; scalar_t__ large_usb_packets; } ;
struct mmc_data {int bytes_xfered; int sg_len; int sg; } ;
struct mmc_command {int error; } ;


 int ENOMEM ;
 int EREMOTEIO ;
 int GFP_KERNEL ;
 int add_timer (TYPE_3__*) ;
 int del_timer (TYPE_3__*) ;
 scalar_t__ jiffies ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int pad_input_to_usb_pkt ;
 int sg_copy_from_buffer (int ,int ,int *,int) ;
 unsigned int usb_rcvbulkpipe (int ,int ) ;
 int usb_sg_init (TYPE_1__*,int ,unsigned int,int ,int ,int ,int ,int ) ;
 int usb_sg_wait (TYPE_1__*) ;
 int usb_unlink_urb (int ) ;
 int vub300_usb_bulk_msg (struct vub300_mmc_host*,unsigned int,int *,int,int*,int) ;

__attribute__((used)) static int __command_read_data(struct vub300_mmc_host *vub300,
          struct mmc_command *cmd, struct mmc_data *data)
{

 int linear_length = vub300->datasize;
 int padded_length = vub300->large_usb_packets ?
  ((511 + linear_length) >> 9) << 9 :
  ((63 + linear_length) >> 6) << 6;
 if ((padded_length == linear_length) || !pad_input_to_usb_pkt) {
  int result;
  unsigned pipe;
  pipe = usb_rcvbulkpipe(vub300->udev, vub300->data_inp_ep);
  result = usb_sg_init(&vub300->sg_request, vub300->udev,
         pipe, 0, data->sg,
         data->sg_len, 0, GFP_KERNEL);
  if (result < 0) {
   usb_unlink_urb(vub300->command_out_urb);
   usb_unlink_urb(vub300->command_res_urb);
   cmd->error = result;
   data->bytes_xfered = 0;
   return 0;
  } else {
   vub300->sg_transfer_timer.expires =
    jiffies + msecs_to_jiffies(2000 +
        (linear_length / 16384));
   add_timer(&vub300->sg_transfer_timer);
   usb_sg_wait(&vub300->sg_request);
   del_timer(&vub300->sg_transfer_timer);
   if (vub300->sg_request.status < 0) {
    cmd->error = vub300->sg_request.status;
    data->bytes_xfered = 0;
    return 0;
   } else {
    data->bytes_xfered = vub300->datasize;
    return linear_length;
   }
  }
 } else {
  u8 *buf = kmalloc(padded_length, GFP_KERNEL);
  if (buf) {
   int result;
   unsigned pipe = usb_rcvbulkpipe(vub300->udev,
       vub300->data_inp_ep);
   int actual_length = 0;
   result = vub300_usb_bulk_msg(vub300, pipe, buf,
          padded_length, &actual_length,
          2000 + (padded_length / 16384));
   if (result < 0) {
    cmd->error = result;
    data->bytes_xfered = 0;
    kfree(buf);
    return 0;
   } else if (actual_length < linear_length) {
    cmd->error = -EREMOTEIO;
    data->bytes_xfered = 0;
    kfree(buf);
    return 0;
   } else {
    sg_copy_from_buffer(data->sg, data->sg_len, buf,
          linear_length);
    kfree(buf);
    data->bytes_xfered = vub300->datasize;
    return linear_length;
   }
  } else {
   cmd->error = -ENOMEM;
   data->bytes_xfered = 0;
   return 0;
  }
 }
}
