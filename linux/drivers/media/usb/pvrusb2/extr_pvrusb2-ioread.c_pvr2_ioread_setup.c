
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_stream {int dummy; } ;
struct pvr2_ioread {int mutex; struct pvr2_stream* stream; int * buffer_storage; } ;
struct pvr2_buffer {int dummy; } ;


 unsigned int BUFFER_COUNT ;
 int BUFFER_SIZE ;
 int PVR2_TRACE_START_STOP ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pvr2_buffer_set_buffer (struct pvr2_buffer*,int ,int ) ;
 int pvr2_ioread_stop (struct pvr2_ioread*) ;
 struct pvr2_buffer* pvr2_stream_get_buffer (struct pvr2_stream*,unsigned int) ;
 scalar_t__ pvr2_stream_get_buffer_count (struct pvr2_stream*) ;
 int pvr2_stream_kill (struct pvr2_stream*) ;
 int pvr2_stream_set_buffer_count (struct pvr2_stream*,unsigned int) ;
 int pvr2_trace (int ,char*,struct pvr2_ioread*) ;

int pvr2_ioread_setup(struct pvr2_ioread *cp,struct pvr2_stream *sp)
{
 int ret;
 unsigned int idx;
 struct pvr2_buffer *bp;

 mutex_lock(&cp->mutex);
 do {
  if (cp->stream) {
   pvr2_trace(PVR2_TRACE_START_STOP,
       "/*---TRACE_READ---*/ pvr2_ioread_setup (tear-down) id=%p",
       cp);
   pvr2_ioread_stop(cp);
   pvr2_stream_kill(cp->stream);
   if (pvr2_stream_get_buffer_count(cp->stream)) {
    pvr2_stream_set_buffer_count(cp->stream,0);
   }
   cp->stream = ((void*)0);
  }
  if (sp) {
   pvr2_trace(PVR2_TRACE_START_STOP,
       "/*---TRACE_READ---*/ pvr2_ioread_setup (setup) id=%p",
       cp);
   pvr2_stream_kill(sp);
   ret = pvr2_stream_set_buffer_count(sp,BUFFER_COUNT);
   if (ret < 0) {
    mutex_unlock(&cp->mutex);
    return ret;
   }
   for (idx = 0; idx < BUFFER_COUNT; idx++) {
    bp = pvr2_stream_get_buffer(sp,idx);
    pvr2_buffer_set_buffer(bp,
             cp->buffer_storage[idx],
             BUFFER_SIZE);
   }
   cp->stream = sp;
  }
 } while (0);
 mutex_unlock(&cp->mutex);

 return 0;
}
