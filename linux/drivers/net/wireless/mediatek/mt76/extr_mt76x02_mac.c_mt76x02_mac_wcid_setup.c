
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mt76x02_dev {int dummy; } ;
struct mt76_wcid_addr {int macaddr; } ;
typedef int addr ;


 int ETH_ALEN ;
 int FIELD_PREP (int ,int) ;
 int MT_WCID_ADDR (int) ;
 int MT_WCID_ATTR (int) ;
 int MT_WCID_ATTR_BSS_IDX ;
 int MT_WCID_ATTR_BSS_IDX_EXT ;
 int memcpy (int ,int*,int ) ;
 int mt76_wr (struct mt76x02_dev*,int ,int) ;
 int mt76_wr_copy (struct mt76x02_dev*,int ,struct mt76_wcid_addr*,int) ;

void mt76x02_mac_wcid_setup(struct mt76x02_dev *dev, u8 idx,
       u8 vif_idx, u8 *mac)
{
 struct mt76_wcid_addr addr = {};
 u32 attr;

 attr = FIELD_PREP(MT_WCID_ATTR_BSS_IDX, vif_idx & 7) |
        FIELD_PREP(MT_WCID_ATTR_BSS_IDX_EXT, !!(vif_idx & 8));

 mt76_wr(dev, MT_WCID_ATTR(idx), attr);

 if (idx >= 128)
  return;

 if (mac)
  memcpy(addr.macaddr, mac, ETH_ALEN);

 mt76_wr_copy(dev, MT_WCID_ADDR(idx), &addr, sizeof(addr));
}
