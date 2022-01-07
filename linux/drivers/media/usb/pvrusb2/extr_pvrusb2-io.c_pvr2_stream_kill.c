
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_stream {scalar_t__ buffer_total_count; scalar_t__ buffer_target_count; int mutex; } ;
struct pvr2_buffer {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pvr2_buffer_set_idle (struct pvr2_buffer*) ;
 int pvr2_stream_achieve_buffer_count (struct pvr2_stream*) ;
 struct pvr2_buffer* pvr2_stream_get_ready_buffer (struct pvr2_stream*) ;
 int pvr2_stream_internal_flush (struct pvr2_stream*) ;

void pvr2_stream_kill(struct pvr2_stream *sp)
{
 struct pvr2_buffer *bp;
 mutex_lock(&sp->mutex);
 do {
  pvr2_stream_internal_flush(sp);
  while ((bp = pvr2_stream_get_ready_buffer(sp)) != ((void*)0)) {
   pvr2_buffer_set_idle(bp);
  }
  if (sp->buffer_total_count != sp->buffer_target_count) {
   pvr2_stream_achieve_buffer_count(sp);
  }
 } while (0);
 mutex_unlock(&sp->mutex);
}
