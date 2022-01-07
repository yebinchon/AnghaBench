
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_stream {unsigned int buffer_target_count; int mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pvr2_stream_achieve_buffer_count (struct pvr2_stream*) ;

int pvr2_stream_set_buffer_count(struct pvr2_stream *sp, unsigned int cnt)
{
 int ret;
 if (sp->buffer_target_count == cnt) return 0;
 mutex_lock(&sp->mutex);
 do {
  sp->buffer_target_count = cnt;
  ret = pvr2_stream_achieve_buffer_count(sp);
 } while (0);
 mutex_unlock(&sp->mutex);
 return ret;
}
