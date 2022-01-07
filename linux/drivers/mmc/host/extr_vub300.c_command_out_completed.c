
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vub300_mmc_host {int command_complete; TYPE_1__* command_res_urb; int resp; int udev; int cmnd_res_ep; } ;
struct urb {scalar_t__ status; scalar_t__ context; } ;
struct TYPE_3__ {scalar_t__ actual_length; } ;


 int GFP_ATOMIC ;
 int command_res_completed ;
 int complete (int *) ;
 int usb_fill_bulk_urb (TYPE_1__*,int ,unsigned int,int *,int,int ,struct vub300_mmc_host*) ;
 unsigned int usb_rcvbulkpipe (int ,int ) ;
 int usb_submit_urb (TYPE_1__*,int ) ;

__attribute__((used)) static void command_out_completed(struct urb *urb)
{
 struct vub300_mmc_host *vub300 = (struct vub300_mmc_host *)urb->context;
 if (urb->status) {
  complete(&vub300->command_complete);
 } else {
  int ret;
  unsigned int pipe =
   usb_rcvbulkpipe(vub300->udev, vub300->cmnd_res_ep);
  usb_fill_bulk_urb(vub300->command_res_urb, vub300->udev, pipe,
      &vub300->resp, sizeof(vub300->resp),
      command_res_completed, vub300);
  vub300->command_res_urb->actual_length = 0;
  ret = usb_submit_urb(vub300->command_res_urb, GFP_ATOMIC);
  if (ret == 0) {




  } else {




   complete(&vub300->command_complete);
  }
 }
}
