
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct radar_detector_specs {int dummy; } ;
struct pulse_event {scalar_t__ ts; int freq; } ;
struct pri_sequence {int count_falses; int count; int pri; } ;
struct pri_detector {int (* reset ) (struct pri_detector*,scalar_t__) ;TYPE_1__* rs; struct pri_sequence* (* add_pulse ) (struct pri_detector*,struct pulse_event*) ;} ;
struct dfs_pattern_detector {scalar_t__ region; scalar_t__ last_pulse_ts; size_t num_radar_types; int common; } ;
struct channel_detector {struct pri_detector** detectors; } ;
struct TYPE_2__ {int type_id; } ;


 int DFS ;
 scalar_t__ NL80211_DFS_UNSET ;
 int ath_dbg (int ,int ,char*,int ,int ,int ,int ,int ) ;
 struct channel_detector* channel_detector_get (struct dfs_pattern_detector*,int ) ;
 int dpd_reset (struct dfs_pattern_detector*) ;
 int memcpy (struct radar_detector_specs*,TYPE_1__*,int) ;
 struct pri_sequence* stub1 (struct pri_detector*,struct pulse_event*) ;
 int stub2 (struct pri_detector*,scalar_t__) ;

__attribute__((used)) static bool
dpd_add_pulse(struct dfs_pattern_detector *dpd, struct pulse_event *event,
       struct radar_detector_specs *rs)
{
 u32 i;
 struct channel_detector *cd;





 if (dpd->region == NL80211_DFS_UNSET)
  return 1;

 cd = channel_detector_get(dpd, event->freq);
 if (cd == ((void*)0))
  return 0;


 if (event->ts < dpd->last_pulse_ts)
  dpd_reset(dpd);
 dpd->last_pulse_ts = event->ts;


 for (i = 0; i < dpd->num_radar_types; i++) {
  struct pri_detector *pd = cd->detectors[i];
  struct pri_sequence *ps = pd->add_pulse(pd, event);
  if (ps != ((void*)0)) {
   if (rs != ((void*)0))
    memcpy(rs, pd->rs, sizeof(*rs));
   ath_dbg(dpd->common, DFS,
    "DFS: radar found on freq=%d: id=%d, pri=%d, "
    "count=%d, count_false=%d\n",
    event->freq, pd->rs->type_id,
    ps->pri, ps->count, ps->count_falses);
   pd->reset(pd, dpd->last_pulse_ts);
   return 1;
  }
 }
 return 0;
}
