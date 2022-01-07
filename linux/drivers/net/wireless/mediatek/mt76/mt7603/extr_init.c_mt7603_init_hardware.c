
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct mt7603_dev {TYPE_1__ mt76; int rxfilter; } ;


 int FIELD_PREP (int ,int) ;
 int MT7603_WTBL_SIZE ;
 int MT76_STATE_INITIALIZED ;
 int MT_INT_SOURCE_CSR ;
 int MT_PSE_RTA ;
 int MT_PSE_RTA_BUSY ;
 int MT_PSE_RTA_TAG_ID ;
 int MT_PSE_RTA_WRITE ;
 int MT_WF_RFCR ;
 int MT_WPDMA_GLO_CFG ;
 int mt7603_dma_init (struct mt7603_dev*) ;
 int mt7603_dma_sched_init (struct mt7603_dev*) ;
 int mt7603_eeprom_init (struct mt7603_dev*) ;
 int mt7603_mac_dma_start (struct mt7603_dev*) ;
 int mt7603_mac_init (struct mt7603_dev*) ;
 int mt7603_mcu_init (struct mt7603_dev*) ;
 int mt7603_mcu_set_eeprom (struct mt7603_dev*) ;
 int mt7603_phy_init (struct mt7603_dev*) ;
 int mt76_poll (struct mt7603_dev*,int ,int,int ,int) ;
 int mt76_rr (struct mt7603_dev*,int ) ;
 int mt76_wr (struct mt7603_dev*,int ,int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int
mt7603_init_hardware(struct mt7603_dev *dev)
{
 int i, ret;

 mt76_wr(dev, MT_INT_SOURCE_CSR, ~0);

 ret = mt7603_eeprom_init(dev);
 if (ret < 0)
  return ret;

 ret = mt7603_dma_init(dev);
 if (ret)
  return ret;

 mt76_wr(dev, MT_WPDMA_GLO_CFG, 0x52000850);
 mt7603_mac_dma_start(dev);
 dev->rxfilter = mt76_rr(dev, MT_WF_RFCR);
 set_bit(MT76_STATE_INITIALIZED, &dev->mt76.state);

 for (i = 0; i < MT7603_WTBL_SIZE; i++) {
  mt76_wr(dev, MT_PSE_RTA, MT_PSE_RTA_BUSY | MT_PSE_RTA_WRITE |
   FIELD_PREP(MT_PSE_RTA_TAG_ID, i));
  mt76_poll(dev, MT_PSE_RTA, MT_PSE_RTA_BUSY, 0, 5000);
 }

 ret = mt7603_mcu_init(dev);
 if (ret)
  return ret;

 mt7603_dma_sched_init(dev);
 mt7603_mcu_set_eeprom(dev);
 mt7603_phy_init(dev);
 mt7603_mac_init(dev);

 return 0;
}
