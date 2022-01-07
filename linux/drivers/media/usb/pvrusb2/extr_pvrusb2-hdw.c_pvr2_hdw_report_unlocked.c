
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_stream_stats {int buffers_failed; int buffers_processed; int buffers_in_ready; int buffers_in_idle; int buffers_in_queue; int bytes_processed; } ;
struct pvr2_hdw {unsigned int ir_scheme_active; int vid_stream; int input_allowed_mask; int input_avail_mask; int master_state; int state_pathway_ok; int state_usbstream_run; int state_encoder_waitok; int state_encoder_config; int state_encoder_runok; int state_encoder_run; int state_encoder_ok; int state_decoder_quiescent; int state_decoder_ready; int state_decoder_run; int state_pipeline_pause; int state_pipeline_req; int state_pipeline_config; int state_pipeline_idle; int pathway_state; int flag_decoder_missed; int flag_tripped; int flag_disconnected; int flag_init_ok; int flag_ok; } ;


 unsigned int ARRAY_SIZE (char**) ;
 char** ir_scheme_names ;
 unsigned int print_input_mask (int ,char*,unsigned int) ;
 int pvr2_get_state_name (int ) ;
 int pvr2_pathway_state_name (int ) ;
 int pvr2_stream_get_stats (int ,struct pvr2_stream_stats*,int ) ;
 unsigned int scnprintf (char*,unsigned int,char*,...) ;

__attribute__((used)) static unsigned int pvr2_hdw_report_unlocked(struct pvr2_hdw *hdw,int which,
          char *buf,unsigned int acnt)
{
 switch (which) {
 case 0:
  return scnprintf(
   buf,acnt,
   "driver:%s%s%s%s%s <mode=%s>",
   (hdw->flag_ok ? " <ok>" : " <fail>"),
   (hdw->flag_init_ok ? " <init>" : " <uninitialized>"),
   (hdw->flag_disconnected ? " <disconnected>" :
    " <connected>"),
   (hdw->flag_tripped ? " <tripped>" : ""),
   (hdw->flag_decoder_missed ? " <no decoder>" : ""),
   pvr2_pathway_state_name(hdw->pathway_state));

 case 1:
  return scnprintf(
   buf,acnt,
   "pipeline:%s%s%s%s",
   (hdw->state_pipeline_idle ? " <idle>" : ""),
   (hdw->state_pipeline_config ?
    " <configok>" : " <stale>"),
   (hdw->state_pipeline_req ? " <req>" : ""),
   (hdw->state_pipeline_pause ? " <pause>" : ""));
 case 2:
  return scnprintf(
   buf,acnt,
   "worker:%s%s%s%s%s%s%s",
   (hdw->state_decoder_run ?
    (hdw->state_decoder_ready ?
     "<decode:run>" : " <decode:start>") :
    (hdw->state_decoder_quiescent ?
     "" : " <decode:stop>")),
   (hdw->state_decoder_quiescent ?
    " <decode:quiescent>" : ""),
   (hdw->state_encoder_ok ?
    "" : " <encode:init>"),
   (hdw->state_encoder_run ?
    (hdw->state_encoder_runok ?
     " <encode:run>" :
     " <encode:firstrun>") :
    (hdw->state_encoder_runok ?
     " <encode:stop>" :
     " <encode:virgin>")),
   (hdw->state_encoder_config ?
    " <encode:configok>" :
    (hdw->state_encoder_waitok ?
     "" : " <encode:waitok>")),
   (hdw->state_usbstream_run ?
    " <usb:run>" : " <usb:stop>"),
   (hdw->state_pathway_ok ?
    " <pathway:ok>" : ""));
 case 3:
  return scnprintf(
   buf,acnt,
   "state: %s",
   pvr2_get_state_name(hdw->master_state));
 case 4: {
  unsigned int tcnt = 0;
  unsigned int ccnt;

  ccnt = scnprintf(buf,
     acnt,
     "Hardware supported inputs: ");
  tcnt += ccnt;
  tcnt += print_input_mask(hdw->input_avail_mask,
      buf+tcnt,
      acnt-tcnt);
  if (hdw->input_avail_mask != hdw->input_allowed_mask) {
   ccnt = scnprintf(buf+tcnt,
      acnt-tcnt,
      "; allowed inputs: ");
   tcnt += ccnt;
   tcnt += print_input_mask(hdw->input_allowed_mask,
       buf+tcnt,
       acnt-tcnt);
  }
  return tcnt;
 }
 case 5: {
  struct pvr2_stream_stats stats;
  if (!hdw->vid_stream) break;
  pvr2_stream_get_stats(hdw->vid_stream,
          &stats,
          0);
  return scnprintf(
   buf,acnt,
   "Bytes streamed=%u URBs: queued=%u idle=%u ready=%u processed=%u failed=%u",
   stats.bytes_processed,
   stats.buffers_in_queue,
   stats.buffers_in_idle,
   stats.buffers_in_ready,
   stats.buffers_processed,
   stats.buffers_failed);
 }
 case 6: {
  unsigned int id = hdw->ir_scheme_active;
  return scnprintf(buf, acnt, "ir scheme: id=%d %s", id,
     (id >= ARRAY_SIZE(ir_scheme_names) ?
      "?" : ir_scheme_names[id]));
 }
 default: break;
 }
 return 0;
}
