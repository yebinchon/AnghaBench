
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt76x02_dfs_event {int width; int ts; int engine; } ;
struct mt76x02_dev {int dummy; } ;


 int DFS ;
 int MT_BBP (int ,int) ;
 int MT_DFS_CHECK_EVENT (int ) ;
 int MT_DFS_EVENT_ENGINE (int ) ;
 int MT_DFS_EVENT_TIMESTAMP (int ) ;
 int MT_DFS_EVENT_WIDTH (int ) ;
 int mt76_rr (struct mt76x02_dev*,int ) ;

__attribute__((used)) static bool mt76x02_dfs_fetch_event(struct mt76x02_dev *dev,
        struct mt76x02_dfs_event *event)
{
 u32 data;
 data = mt76_rr(dev, MT_BBP(DFS, 37));
 if (!MT_DFS_CHECK_EVENT(data))
  return 0;

 event->engine = MT_DFS_EVENT_ENGINE(data);
 data = mt76_rr(dev, MT_BBP(DFS, 37));
 event->ts = MT_DFS_EVENT_TIMESTAMP(data);
 data = mt76_rr(dev, MT_BBP(DFS, 37));
 event->width = MT_DFS_EVENT_WIDTH(data);

 return 1;
}
