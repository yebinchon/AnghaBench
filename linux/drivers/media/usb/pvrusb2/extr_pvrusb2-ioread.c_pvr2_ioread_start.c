
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_ioread {int enabled; int sync_state; scalar_t__ spigot_open; scalar_t__ sync_buf_offs; scalar_t__ sync_trashed_count; scalar_t__ sync_key_len; scalar_t__ stream_running; scalar_t__ c_data_offs; scalar_t__ c_data_len; int * c_data_ptr; int * c_buf; int stream; } ;
struct pvr2_buffer {int dummy; } ;


 int PVR2_TRACE_DATA_FLOW ;
 int PVR2_TRACE_START_STOP ;
 int pvr2_buffer_queue (struct pvr2_buffer*) ;
 int pvr2_ioread_stop (struct pvr2_ioread*) ;
 struct pvr2_buffer* pvr2_stream_get_idle_buffer (int ) ;
 int pvr2_trace (int ,char*,...) ;

__attribute__((used)) static int pvr2_ioread_start(struct pvr2_ioread *cp)
{
 int stat;
 struct pvr2_buffer *bp;
 if (cp->enabled) return 0;
 if (!(cp->stream)) return 0;
 pvr2_trace(PVR2_TRACE_START_STOP,
     "/*---TRACE_READ---*/ pvr2_ioread_start id=%p",cp);
 while ((bp = pvr2_stream_get_idle_buffer(cp->stream)) != ((void*)0)) {
  stat = pvr2_buffer_queue(bp);
  if (stat < 0) {
   pvr2_trace(PVR2_TRACE_DATA_FLOW,
       "/*---TRACE_READ---*/ pvr2_ioread_start id=%p error=%d",
       cp,stat);
   pvr2_ioread_stop(cp);
   return stat;
  }
 }
 cp->enabled = !0;
 cp->c_buf = ((void*)0);
 cp->c_data_ptr = ((void*)0);
 cp->c_data_len = 0;
 cp->c_data_offs = 0;
 cp->stream_running = 0;
 if (cp->sync_key_len) {
  pvr2_trace(PVR2_TRACE_DATA_FLOW,
      "/*---TRACE_READ---*/ sync_state <== 1");
  cp->sync_state = 1;
  cp->sync_trashed_count = 0;
  cp->sync_buf_offs = 0;
 }
 cp->spigot_open = 0;
 return 0;
}
