
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {scalar_t__ status; scalar_t__ actual_length; scalar_t__ context; } ;
struct smsusb_urb_t {int wq; TYPE_1__* cb; struct smsusb_device_t* dev; } ;
struct smsusb_device_t {scalar_t__ response_alignment; int coredev; } ;
struct sms_msg_hdr {scalar_t__ msg_length; int msg_flags; int msg_type; } ;
struct sms_msg_data {int dummy; } ;
struct TYPE_2__ {scalar_t__ size; scalar_t__ offset; scalar_t__ p; } ;


 scalar_t__ ESHUTDOWN ;
 int INIT_WORK (int *,int ) ;
 int MSG_HDR_FLAG_SPLIT_MSG ;
 int do_submit_urb ;
 int memcpy (char*,struct sms_msg_hdr*,int) ;
 int pr_debug (char*,int ,int ,scalar_t__) ;
 int pr_err (char*,scalar_t__,scalar_t__,...) ;
 int schedule_work (int *) ;
 int smscore_onresponse (int ,TYPE_1__*) ;
 int smscore_translate_msg (int ) ;
 int smsendian_handle_message_header (struct sms_msg_hdr*) ;
 int smsendian_handle_rx_message (struct sms_msg_data*) ;

__attribute__((used)) static void smsusb_onresponse(struct urb *urb)
{
 struct smsusb_urb_t *surb = (struct smsusb_urb_t *) urb->context;
 struct smsusb_device_t *dev = surb->dev;

 if (urb->status == -ESHUTDOWN) {
  pr_err("error, urb status %d (-ESHUTDOWN), %d bytes\n",
   urb->status, urb->actual_length);
  return;
 }

 if ((urb->actual_length > 0) && (urb->status == 0)) {
  struct sms_msg_hdr *phdr = (struct sms_msg_hdr *)surb->cb->p;

  smsendian_handle_message_header(phdr);
  if (urb->actual_length >= phdr->msg_length) {
   surb->cb->size = phdr->msg_length;

   if (dev->response_alignment &&
       (phdr->msg_flags & MSG_HDR_FLAG_SPLIT_MSG)) {

    surb->cb->offset =
     dev->response_alignment +
     ((phdr->msg_flags >> 8) & 3);


    if (((int) phdr->msg_length +
         surb->cb->offset) > urb->actual_length) {
     pr_err("invalid response msglen %d offset %d size %d\n",
      phdr->msg_length,
      surb->cb->offset,
      urb->actual_length);
     goto exit_and_resubmit;
    }



    memcpy((char *) phdr + surb->cb->offset,
           phdr, sizeof(struct sms_msg_hdr));
   } else
    surb->cb->offset = 0;

   pr_debug("received %s(%d) size: %d\n",
      smscore_translate_msg(phdr->msg_type),
      phdr->msg_type, phdr->msg_length);

   smsendian_handle_rx_message((struct sms_msg_data *) phdr);

   smscore_onresponse(dev->coredev, surb->cb);
   surb->cb = ((void*)0);
  } else {
   pr_err("invalid response msglen %d actual %d\n",
    phdr->msg_length, urb->actual_length);
  }
 } else
  pr_err("error, urb status %d, %d bytes\n",
   urb->status, urb->actual_length);


exit_and_resubmit:
 INIT_WORK(&surb->wq, do_submit_urb);
 schedule_work(&surb->wq);
}
