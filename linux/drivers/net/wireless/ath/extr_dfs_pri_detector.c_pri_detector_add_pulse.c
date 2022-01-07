
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct radar_detector_specs {scalar_t__ width_min; scalar_t__ width_max; scalar_t__ max_pri_tolerance; scalar_t__ chirp; } ;
struct pulse_event {scalar_t__ ts; scalar_t__ width; scalar_t__ chirp; } ;
struct pri_sequence {int dummy; } ;
struct pri_detector {scalar_t__ last_ts; struct radar_detector_specs* rs; } ;


 int pri_detector_reset (struct pri_detector*,scalar_t__) ;
 int pseq_handler_add_to_existing_seqs (struct pri_detector*,scalar_t__) ;
 struct pri_sequence* pseq_handler_check_detection (struct pri_detector*) ;
 int pseq_handler_create_sequences (struct pri_detector*,scalar_t__,int ) ;
 int pulse_queue_enqueue (struct pri_detector*,scalar_t__) ;

__attribute__((used)) static struct pri_sequence *pri_detector_add_pulse(struct pri_detector *de,
         struct pulse_event *event)
{
 u32 max_updated_seq;
 struct pri_sequence *ps;
 u64 ts = event->ts;
 const struct radar_detector_specs *rs = de->rs;


 if ((rs->width_min > event->width) || (rs->width_max < event->width))
  return ((void*)0);

 if ((ts - de->last_ts) < rs->max_pri_tolerance)

  return ((void*)0);

 if (rs->chirp && rs->chirp != event->chirp)
  return ((void*)0);

 de->last_ts = ts;

 max_updated_seq = pseq_handler_add_to_existing_seqs(de, ts);

 if (!pseq_handler_create_sequences(de, ts, max_updated_seq)) {
  pri_detector_reset(de, ts);
  return ((void*)0);
 }

 ps = pseq_handler_check_detection(de);

 if (ps == ((void*)0))
  pulse_queue_enqueue(de, ts);

 return ps;
}
