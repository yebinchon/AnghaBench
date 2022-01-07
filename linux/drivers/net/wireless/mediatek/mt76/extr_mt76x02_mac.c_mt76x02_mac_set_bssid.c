
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mt76x02_dev {int dummy; } ;


 int MT_MAC_APC_BSSID_H (int) ;
 int MT_MAC_APC_BSSID_H_ADDR ;
 int MT_MAC_APC_BSSID_L (int) ;
 int get_unaligned_le16 (int const*) ;
 int get_unaligned_le32 (int const*) ;
 int mt76_rmw_field (struct mt76x02_dev*,int ,int ,int ) ;
 int mt76_wr (struct mt76x02_dev*,int ,int ) ;

void mt76x02_mac_set_bssid(struct mt76x02_dev *dev, u8 idx, const u8 *addr)
{
 idx &= 7;
 mt76_wr(dev, MT_MAC_APC_BSSID_L(idx), get_unaligned_le32(addr));
 mt76_rmw_field(dev, MT_MAC_APC_BSSID_H(idx), MT_MAC_APC_BSSID_H_ADDR,
         get_unaligned_le16(addr + 4));
}
