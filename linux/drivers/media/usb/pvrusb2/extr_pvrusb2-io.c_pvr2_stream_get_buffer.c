
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_stream {int buffer_total_count; struct pvr2_buffer** buffers; } ;
struct pvr2_buffer {int dummy; } ;



struct pvr2_buffer *pvr2_stream_get_buffer(struct pvr2_stream *sp, int id)
{
 if (id < 0) return ((void*)0);
 if (id >= sp->buffer_total_count) return ((void*)0);
 return sp->buffers[id];
}
