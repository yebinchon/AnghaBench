
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_buffer {scalar_t__ state; int purb; } ;


 scalar_t__ pvr2_buffer_state_queued ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void pvr2_buffer_wipe(struct pvr2_buffer *bp)
{
 if (bp->state == pvr2_buffer_state_queued) {
  usb_kill_urb(bp->purb);
 }
}
