
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt76x02_dfs_pattern_detector {int chirp_pulse_ts; int chirp_pulse_cnt; } ;
struct mt76x02_dev {struct mt76x02_dfs_pattern_detector dfs_pd; } ;


 int MT_PBF_LIFE_TIMER ;
 int mt76_rr (struct mt76x02_dev*,int ) ;

__attribute__((used)) static bool mt76x02_dfs_check_chirp(struct mt76x02_dev *dev)
{
 bool ret = 0;
 u32 current_ts, delta_ts;
 struct mt76x02_dfs_pattern_detector *dfs_pd = &dev->dfs_pd;

 current_ts = mt76_rr(dev, MT_PBF_LIFE_TIMER);
 delta_ts = current_ts - dfs_pd->chirp_pulse_ts;
 dfs_pd->chirp_pulse_ts = current_ts;


 if (delta_ts <= (12 * (1 << 20))) {
  if (++dfs_pd->chirp_pulse_cnt > 8)
   ret = 1;
 } else {
  dfs_pd->chirp_pulse_cnt = 1;
 }

 return ret;
}
