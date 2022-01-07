
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct dfs_pattern_detector {size_t num_radar_types; int last_pulse_ts; } ;
struct channel_detector {TYPE_1__** detectors; } ;
struct TYPE_2__ {int (* reset ) (TYPE_1__*,int ) ;} ;


 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static void channel_detector_reset(struct dfs_pattern_detector *dpd,
       struct channel_detector *cd)
{
 u32 i;
 if (cd == ((void*)0))
  return;
 for (i = 0; i < dpd->num_radar_types; i++)
  cd->detectors[i]->reset(cd->detectors[i], dpd->last_pulse_ts);
}
