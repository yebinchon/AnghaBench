
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt76x02_dev {int dummy; } ;


 int AGC ;
 int DFS ;
 int FIELD_GET (int ,int) ;
 int MT_BBP (int ,int) ;
 int MT_BBP_AGC_LNA_HIGH_GAIN ;
 int MT_DFS_CH_EN ;
 scalar_t__ is_mt76x2 (struct mt76x02_dev*) ;
 int mt76_rr (struct mt76x02_dev*,int ) ;
 int mt76_wr (struct mt76x02_dev*,int ,int) ;

void mt76x02_phy_dfs_adjust_agc(struct mt76x02_dev *dev)
{
 u32 agc_r8, agc_r4, val_r8, val_r4, dfs_r31;

 agc_r8 = mt76_rr(dev, MT_BBP(AGC, 8));
 agc_r4 = mt76_rr(dev, MT_BBP(AGC, 4));

 val_r8 = (agc_r8 & 0x00007e00) >> 9;
 val_r4 = agc_r4 & ~0x1f000000;
 val_r4 += (((val_r8 + 1) >> 1) << 24);
 mt76_wr(dev, MT_BBP(AGC, 4), val_r4);

 dfs_r31 = FIELD_GET(MT_BBP_AGC_LNA_HIGH_GAIN, val_r4);
 dfs_r31 += val_r8;
 dfs_r31 -= (agc_r8 & 0x00000038) >> 3;
 dfs_r31 = (dfs_r31 << 16) | 0x00000307;
 mt76_wr(dev, MT_BBP(DFS, 31), dfs_r31);

 if (is_mt76x2(dev)) {
  mt76_wr(dev, MT_BBP(DFS, 32), 0x00040071);
 } else {

  mt76_wr(dev, MT_BBP(DFS, 0), 0);

  mt76_wr(dev, MT_BBP(DFS, 0), MT_DFS_CH_EN << 16);
 }
}
