
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt76x02_dev {int dummy; } ;


 int FIELD_PREP (int,int) ;
 int MT_CCK_PROT_CFG ;
 int MT_OFDM_PROT_CFG ;
 int MT_PROT_CFG_CTRL ;
 int MT_PROT_CFG_RTS_THRESH ;
 int MT_TX_RTS_CFG ;
 int MT_TX_RTS_CFG_THRESH ;
 int mt76_rmw (struct mt76x02_dev*,int ,int,int) ;
 int mt76_rmw_field (struct mt76x02_dev*,int ,int ,int) ;

void mt76x02_mac_set_rts_thresh(struct mt76x02_dev *dev, u32 val)
{
 u32 data = 0;

 if (val != ~0)
  data = FIELD_PREP(MT_PROT_CFG_CTRL, 1) |
         MT_PROT_CFG_RTS_THRESH;

 mt76_rmw_field(dev, MT_TX_RTS_CFG, MT_TX_RTS_CFG_THRESH, val);

 mt76_rmw(dev, MT_CCK_PROT_CFG,
   MT_PROT_CFG_CTRL | MT_PROT_CFG_RTS_THRESH, data);
 mt76_rmw(dev, MT_OFDM_PROT_CFG,
   MT_PROT_CFG_CTRL | MT_PROT_CFG_RTS_THRESH, data);
}
