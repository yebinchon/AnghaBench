
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mt76x02_dev {int dummy; } ;


 int DFS ;
 int MT_BBP (int ,int) ;
 int mt76_wr (struct mt76x02_dev*,int ,int) ;

__attribute__((used)) static void
mt76x02_dfs_set_capture_mode_ctrl(struct mt76x02_dev *dev, u8 enable)
{
 u32 data;

 data = (1 << 1) | enable;
 mt76_wr(dev, MT_BBP(DFS, 36), data);
}
