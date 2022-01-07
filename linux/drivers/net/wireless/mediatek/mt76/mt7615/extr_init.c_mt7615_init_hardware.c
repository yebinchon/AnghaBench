
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int idx; int hw_key_idx; } ;
struct TYPE_3__ {TYPE_2__ global_wcid; int * wcid; int wcid_mask; int state; } ;
struct mt7615_dev {TYPE_1__ mt76; int token; int token_lock; } ;


 int ENOSPC ;
 scalar_t__ MT7615_WTBL_STA ;
 int MT76_STATE_INITIALIZED ;
 int MT_INT_SOURCE_CSR ;
 int idr_init (int *) ;
 int mt7615_dma_init (struct mt7615_dev*) ;
 int mt7615_eeprom_init (struct mt7615_dev*) ;
 int mt7615_mac_init (struct mt7615_dev*) ;
 int mt7615_mcu_ctrl_pm_state (struct mt7615_dev*,int ) ;
 int mt7615_mcu_del_wtbl_all (struct mt7615_dev*) ;
 int mt7615_mcu_init (struct mt7615_dev*) ;
 int mt7615_mcu_set_eeprom (struct mt7615_dev*) ;
 int mt7615_phy_init (struct mt7615_dev*) ;
 int mt76_wcid_alloc (int ,scalar_t__) ;
 int mt76_wr (struct mt7615_dev*,int ,int ) ;
 int rcu_assign_pointer (int ,TYPE_2__*) ;
 int set_bit (int ,int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int mt7615_init_hardware(struct mt7615_dev *dev)
{
 int ret, idx;

 mt76_wr(dev, MT_INT_SOURCE_CSR, ~0);

 spin_lock_init(&dev->token_lock);
 idr_init(&dev->token);

 ret = mt7615_eeprom_init(dev);
 if (ret < 0)
  return ret;

 ret = mt7615_dma_init(dev);
 if (ret)
  return ret;

 set_bit(MT76_STATE_INITIALIZED, &dev->mt76.state);

 ret = mt7615_mcu_init(dev);
 if (ret)
  return ret;

 mt7615_mcu_set_eeprom(dev);
 mt7615_mac_init(dev);
 mt7615_phy_init(dev);
 mt7615_mcu_ctrl_pm_state(dev, 0);
 mt7615_mcu_del_wtbl_all(dev);


 idx = mt76_wcid_alloc(dev->mt76.wcid_mask, MT7615_WTBL_STA - 1);
 if (idx)
  return -ENOSPC;

 dev->mt76.global_wcid.idx = idx;
 dev->mt76.global_wcid.hw_key_idx = -1;
 rcu_assign_pointer(dev->mt76.wcid[idx], &dev->mt76.global_wcid);

 return 0;
}
