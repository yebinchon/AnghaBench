
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct mt7603_dev {int dummy; } ;


 scalar_t__ FIELD_PREP (int ,int) ;
 int GENMASK (int,int ) ;
 int MT_WTBL1_W0_ADDR_HI ;
 int MT_WTBL1_W0_MUAR_IDX ;
 scalar_t__ MT_WTBL1_W0_RX_CHECK_A1 ;
 int MT_WTBL1_W1_ADDR_LO ;
 scalar_t__ MT_WTBL1_W2_ADMISSION_CONTROL ;
 int MT_WTBL2_SIZE ;
 int MT_WTBL3_SIZE ;
 int MT_WTBL4_SIZE ;
 int MT_WTBL_UPDATE ;
 int MT_WTBL_UPDATE_BUSY ;
 int MT_WTBL_UPDATE_WTBL2 ;
 int get_unaligned_le16 (void const*) ;
 int get_unaligned_le32 (void const*) ;
 scalar_t__ mt7603_wtbl1_addr (int) ;
 scalar_t__ mt7603_wtbl2_addr (int) ;
 scalar_t__ mt7603_wtbl3_addr (int) ;
 scalar_t__ mt7603_wtbl4_addr (int) ;
 int mt7603_wtbl_update (struct mt7603_dev*,int,int ) ;
 int mt76_poll (struct mt7603_dev*,int ,int ,int ,int) ;
 int mt76_set (struct mt7603_dev*,scalar_t__,scalar_t__) ;
 int mt76_start_tx_ac (struct mt7603_dev*,int ) ;
 int mt76_stop_tx_ac (struct mt7603_dev*,int ) ;
 int mt76_wr (struct mt7603_dev*,scalar_t__,int ) ;

void mt7603_wtbl_init(struct mt7603_dev *dev, int idx, int vif,
        const u8 *mac_addr)
{
 const void *_mac = mac_addr;
 u32 addr = mt7603_wtbl1_addr(idx);
 u32 w0 = 0, w1 = 0;
 int i;

 if (_mac) {
  w0 = FIELD_PREP(MT_WTBL1_W0_ADDR_HI,
    get_unaligned_le16(_mac + 4));
  w1 = FIELD_PREP(MT_WTBL1_W1_ADDR_LO,
    get_unaligned_le32(_mac));
 }

 if (vif < 0)
  vif = 0;
 else
  w0 |= MT_WTBL1_W0_RX_CHECK_A1;
 w0 |= FIELD_PREP(MT_WTBL1_W0_MUAR_IDX, vif);

 mt76_poll(dev, MT_WTBL_UPDATE, MT_WTBL_UPDATE_BUSY, 0, 5000);

 mt76_set(dev, addr + 0 * 4, w0);
 mt76_set(dev, addr + 1 * 4, w1);
 mt76_set(dev, addr + 2 * 4, MT_WTBL1_W2_ADMISSION_CONTROL);

 mt76_stop_tx_ac(dev, GENMASK(3, 0));
 addr = mt7603_wtbl2_addr(idx);
 for (i = 0; i < MT_WTBL2_SIZE; i += 4)
  mt76_wr(dev, addr + i, 0);
 mt7603_wtbl_update(dev, idx, MT_WTBL_UPDATE_WTBL2);
 mt76_start_tx_ac(dev, GENMASK(3, 0));

 addr = mt7603_wtbl3_addr(idx);
 for (i = 0; i < MT_WTBL3_SIZE; i += 4)
  mt76_wr(dev, addr + i, 0);

 addr = mt7603_wtbl4_addr(idx);
 for (i = 0; i < MT_WTBL4_SIZE; i += 4)
  mt76_wr(dev, addr + i, 0);
}
