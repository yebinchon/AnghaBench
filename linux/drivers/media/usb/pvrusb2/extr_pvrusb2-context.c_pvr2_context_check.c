
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stream; } ;
struct pvr2_context {int initialized_flag; struct pvr2_channel* mc_first; scalar_t__ disconnect_flag; int (* setup_func ) (struct pvr2_context*) ;int hdw; TYPE_1__ video_stream; } ;
struct pvr2_channel {int (* check_func ) (struct pvr2_channel*) ;struct pvr2_channel* mc_next; } ;


 int PVR2_TRACE_CTXT ;
 int pvr2_context_destroy (struct pvr2_context*) ;
 scalar_t__ pvr2_context_notify ;
 int pvr2_hdw_get_video_stream (int ) ;
 scalar_t__ pvr2_hdw_initialize (int ,void (*) (void*),struct pvr2_context*) ;
 int pvr2_trace (int ,char*,struct pvr2_context*) ;
 int stub1 (struct pvr2_context*) ;
 int stub2 (struct pvr2_channel*) ;

__attribute__((used)) static void pvr2_context_check(struct pvr2_context *mp)
{
 struct pvr2_channel *ch1, *ch2;
 pvr2_trace(PVR2_TRACE_CTXT,
     "pvr2_context %p (notify)", mp);
 if (!mp->initialized_flag && !mp->disconnect_flag) {
  mp->initialized_flag = !0;
  pvr2_trace(PVR2_TRACE_CTXT,
      "pvr2_context %p (initialize)", mp);

  if (pvr2_hdw_initialize(mp->hdw,
     (void (*)(void *))pvr2_context_notify,
     mp)) {
   mp->video_stream.stream =
    pvr2_hdw_get_video_stream(mp->hdw);



   if (mp->setup_func) mp->setup_func(mp);
  } else {
   pvr2_trace(PVR2_TRACE_CTXT,
       "pvr2_context %p (thread skipping setup)",
       mp);





  }
 }

 for (ch1 = mp->mc_first; ch1; ch1 = ch2) {
  ch2 = ch1->mc_next;
  if (ch1->check_func) ch1->check_func(ch1);
 }

 if (mp->disconnect_flag && !mp->mc_first) {

  pvr2_context_destroy(mp);
  return;
 }
}
