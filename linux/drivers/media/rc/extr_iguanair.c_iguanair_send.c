
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iguanair {int completion; TYPE_1__* urb_out; } ;
struct TYPE_2__ {unsigned int transfer_buffer_length; } ;


 int ETIMEDOUT ;
 int GFP_KERNEL ;
 int TIMEOUT ;
 int reinit_completion (int *) ;
 int usb_submit_urb (TYPE_1__*,int ) ;
 scalar_t__ wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int iguanair_send(struct iguanair *ir, unsigned size)
{
 int rc;

 reinit_completion(&ir->completion);

 ir->urb_out->transfer_buffer_length = size;
 rc = usb_submit_urb(ir->urb_out, GFP_KERNEL);
 if (rc)
  return rc;

 if (wait_for_completion_timeout(&ir->completion, TIMEOUT) == 0)
  return -ETIMEDOUT;

 return rc;
}
