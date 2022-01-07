
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt76x02_dfs_hw_pulse {int engine; void* burst; void* w2; void* w1; void* period; } ;
struct mt76x02_dev {int dummy; } ;


 int DFS ;
 int MT_BBP (int ,int) ;
 int MT_DFS_CH_EN ;
 void* mt76_rr (struct mt76x02_dev*,int ) ;
 int mt76_wr (struct mt76x02_dev*,int ,int) ;

__attribute__((used)) static void mt76x02_dfs_get_hw_pulse(struct mt76x02_dev *dev,
         struct mt76x02_dfs_hw_pulse *pulse)
{
 u32 data;


 data = (MT_DFS_CH_EN << 16) | pulse->engine;
 mt76_wr(dev, MT_BBP(DFS, 0), data);


 pulse->period = mt76_rr(dev, MT_BBP(DFS, 19));


 pulse->w1 = mt76_rr(dev, MT_BBP(DFS, 20));
 pulse->w2 = mt76_rr(dev, MT_BBP(DFS, 23));


 pulse->burst = mt76_rr(dev, MT_BBP(DFS, 22));
}
