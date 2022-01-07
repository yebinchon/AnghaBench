
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7603_dev {int dummy; } ;


 int MT_WF_ARB_TX_STOP_0 ;
 int mt7603_ac_queue_mask0 (int ) ;
 int mt76_set (struct mt7603_dev*,int ,int ) ;

__attribute__((used)) static void
mt76_stop_tx_ac(struct mt7603_dev *dev, u32 mask)
{
 mt76_set(dev, MT_WF_ARB_TX_STOP_0, mt7603_ac_queue_mask0(mask));
}
