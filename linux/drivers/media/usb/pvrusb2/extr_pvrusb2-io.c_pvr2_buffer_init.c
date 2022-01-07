
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_stream {int dummy; } ;
struct pvr2_buffer {unsigned int id; int purb; int list_overhead; int state; struct pvr2_stream* stream; int signature; } ;


 int BUFFER_SIG ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int PVR2_TRACE_BUF_POOL ;
 int memset (struct pvr2_buffer*,int ,int) ;
 int pvr2_buffer_describe (struct pvr2_buffer*,char*) ;
 int pvr2_buffer_state_none ;
 int pvr2_trace (int ,char*,struct pvr2_buffer*,struct pvr2_stream*) ;
 int usb_alloc_urb (int ,int ) ;

__attribute__((used)) static int pvr2_buffer_init(struct pvr2_buffer *bp,
       struct pvr2_stream *sp,
       unsigned int id)
{
 memset(bp, 0, sizeof(*bp));
 bp->signature = BUFFER_SIG;
 bp->id = id;
 pvr2_trace(PVR2_TRACE_BUF_POOL,
     "/*---TRACE_FLOW---*/ bufferInit     %p stream=%p", bp, sp);
 bp->stream = sp;
 bp->state = pvr2_buffer_state_none;
 INIT_LIST_HEAD(&bp->list_overhead);
 bp->purb = usb_alloc_urb(0, GFP_KERNEL);
 if (! bp->purb) return -ENOMEM;



 return 0;
}
