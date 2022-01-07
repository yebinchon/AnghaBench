
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int error_code; } ;
struct TYPE_7__ {int header_type; } ;
struct TYPE_10__ {TYPE_4__ error; TYPE_2__ common; } ;
struct vub300_mmc_host {int command_complete; int sg_request; TYPE_5__ resp; TYPE_3__* cmd; scalar_t__ urb; int data; TYPE_1__* command_res_urb; } ;
struct urb {scalar_t__ status; scalar_t__ context; } ;
struct TYPE_8__ {void* error; } ;
struct TYPE_6__ {scalar_t__ actual_length; } ;


 int complete (int *) ;
 int usb_sg_cancel (int *) ;
 int usb_unlink_urb (scalar_t__) ;
 void* vub300_response_error (int ) ;

__attribute__((used)) static void command_res_completed(struct urb *urb)
{
 struct vub300_mmc_host *vub300 = (struct vub300_mmc_host *)urb->context;
 if (urb->status) {

 } else if (vub300->command_res_urb->actual_length == 0) {




 } else if (!vub300->data) {

 } else if (vub300->resp.common.header_type != 0x02) {




 } else if (vub300->urb) {
  vub300->cmd->error =
   vub300_response_error(vub300->resp.error.error_code);
  usb_unlink_urb(vub300->urb);
 } else {
  vub300->cmd->error =
   vub300_response_error(vub300->resp.error.error_code);
  usb_sg_cancel(&vub300->sg_request);
 }
 complete(&vub300->command_complete);
}
