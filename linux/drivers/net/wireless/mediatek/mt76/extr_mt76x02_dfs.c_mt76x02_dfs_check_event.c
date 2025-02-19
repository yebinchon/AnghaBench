
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef size_t u16 ;
struct mt76x02_dfs_pattern_detector {struct mt76x02_dfs_event_rb* event_rb; } ;
struct mt76x02_dfs_event_rb {TYPE_1__* data; int t_rb; } ;
struct mt76x02_dfs_event {int engine; scalar_t__ ts; } ;
struct mt76x02_dev {struct mt76x02_dfs_pattern_detector dfs_pd; } ;
struct TYPE_2__ {scalar_t__ ts; int width; } ;


 int MT_DFS_EVENT_BUFLEN ;
 scalar_t__ MT_DFS_EVENT_TIME_MARGIN ;
 size_t mt76_decr (int ,int ) ;

__attribute__((used)) static bool mt76x02_dfs_check_event(struct mt76x02_dev *dev,
        struct mt76x02_dfs_event *event)
{
 if (event->engine == 2) {
  struct mt76x02_dfs_pattern_detector *dfs_pd = &dev->dfs_pd;
  struct mt76x02_dfs_event_rb *event_buff = &dfs_pd->event_rb[1];
  u16 last_event_idx;
  u32 delta_ts;

  last_event_idx = mt76_decr(event_buff->t_rb,
        MT_DFS_EVENT_BUFLEN);
  delta_ts = event->ts - event_buff->data[last_event_idx].ts;
  if (delta_ts < MT_DFS_EVENT_TIME_MARGIN &&
      event_buff->data[last_event_idx].width >= 200)
   return 0;
 }
 return 1;
}
