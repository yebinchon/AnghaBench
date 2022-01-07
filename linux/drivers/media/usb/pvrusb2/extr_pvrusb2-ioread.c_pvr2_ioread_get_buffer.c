
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_ioread {scalar_t__ c_data_len; scalar_t__ c_data_offs; int * c_buf; int ** buffer_storage; int * c_data_ptr; int stream; } ;


 int PVR2_TRACE_DATA_FLOW ;
 scalar_t__ pvr2_buffer_get_count (int *) ;
 size_t pvr2_buffer_get_id (int *) ;
 int pvr2_buffer_get_status (int *) ;
 int pvr2_buffer_queue (int *) ;
 int pvr2_ioread_stop (struct pvr2_ioread*) ;
 int * pvr2_stream_get_ready_buffer (int ) ;
 int pvr2_trace (int ,char*,struct pvr2_ioread*,int) ;

__attribute__((used)) static int pvr2_ioread_get_buffer(struct pvr2_ioread *cp)
{
 int stat;

 while (cp->c_data_len <= cp->c_data_offs) {
  if (cp->c_buf) {

   stat = pvr2_buffer_queue(cp->c_buf);
   if (stat < 0) {

    pvr2_trace(PVR2_TRACE_DATA_FLOW,
        "/*---TRACE_READ---*/ pvr2_ioread_read id=%p queue_error=%d",
        cp,stat);
    pvr2_ioread_stop(cp);
    return 0;
   }
   cp->c_buf = ((void*)0);
   cp->c_data_ptr = ((void*)0);
   cp->c_data_len = 0;
   cp->c_data_offs = 0;
  }

  cp->c_buf = pvr2_stream_get_ready_buffer(cp->stream);
  if (!cp->c_buf) break;
  cp->c_data_len = pvr2_buffer_get_count(cp->c_buf);
  if (!cp->c_data_len) {

   stat = pvr2_buffer_get_status(cp->c_buf);
   if (stat < 0) {

    pvr2_trace(PVR2_TRACE_DATA_FLOW,
        "/*---TRACE_READ---*/ pvr2_ioread_read id=%p buffer_error=%d",
        cp,stat);
    pvr2_ioread_stop(cp);

    return 0;
   }

   continue;
  }
  cp->c_data_offs = 0;
  cp->c_data_ptr = cp->buffer_storage[
   pvr2_buffer_get_id(cp->c_buf)];
 }
 return !0;
}
