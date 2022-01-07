
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mt7603_dev {int dummy; } ;


 int FIELD_PREP (int ,int ) ;
 int MT_BA_CONTROL_0 ;
 int MT_BA_CONTROL_1 ;
 int MT_BA_CONTROL_1_RESET ;
 int MT_BA_CONTROL_1_TID ;
 int get_unaligned_le16 (void*) ;
 int get_unaligned_le32 (void*) ;
 int mt76_wr (struct mt7603_dev*,int ,int) ;

void mt7603_mac_rx_ba_reset(struct mt7603_dev *dev, void *addr, u8 tid)
{
 mt76_wr(dev, MT_BA_CONTROL_0, get_unaligned_le32(addr));
 mt76_wr(dev, MT_BA_CONTROL_1,
  (get_unaligned_le16(addr + 4) |
   FIELD_PREP(MT_BA_CONTROL_1_TID, tid) |
   MT_BA_CONTROL_1_RESET));
}
