
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_buffer {int purb; int * stream; scalar_t__ signature; } ;


 int PVR2_TRACE_BUF_POOL ;
 int pvr2_buffer_describe (struct pvr2_buffer*,char*) ;
 int pvr2_buffer_set_none (struct pvr2_buffer*) ;
 int pvr2_buffer_wipe (struct pvr2_buffer*) ;
 int pvr2_trace (int ,char*,struct pvr2_buffer*) ;
 int usb_free_urb (int ) ;

__attribute__((used)) static void pvr2_buffer_done(struct pvr2_buffer *bp)
{



 pvr2_buffer_wipe(bp);
 pvr2_buffer_set_none(bp);
 bp->signature = 0;
 bp->stream = ((void*)0);
 usb_free_urb(bp->purb);
 pvr2_trace(PVR2_TRACE_BUF_POOL, "/*---TRACE_FLOW---*/ bufferDone     %p",
     bp);
}
