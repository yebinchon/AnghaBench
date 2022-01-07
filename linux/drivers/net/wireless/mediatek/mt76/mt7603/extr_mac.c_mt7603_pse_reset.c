
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7603_dev {int* reset_cause; } ;


 int MT_MCU_DEBUG_RESET ;
 int MT_MCU_DEBUG_RESET_PSE ;
 int MT_MCU_DEBUG_RESET_PSE_S ;
 int MT_MCU_DEBUG_RESET_QUEUES ;
 size_t RESET_CAUSE_RESET_FAILED ;
 int mt76_clear (struct mt7603_dev*,int ,int ) ;
 int mt76_poll_msec (struct mt7603_dev*,int ,int ,int ,int) ;
 int mt76_set (struct mt7603_dev*,int ,int ) ;

__attribute__((used)) static void mt7603_pse_reset(struct mt7603_dev *dev)
{

 if (!dev->reset_cause[RESET_CAUSE_RESET_FAILED])
  mt76_clear(dev, MT_MCU_DEBUG_RESET, MT_MCU_DEBUG_RESET_PSE_S);


 mt76_set(dev, MT_MCU_DEBUG_RESET, MT_MCU_DEBUG_RESET_PSE);

 if (!mt76_poll_msec(dev, MT_MCU_DEBUG_RESET,
       MT_MCU_DEBUG_RESET_PSE_S,
       MT_MCU_DEBUG_RESET_PSE_S, 500)) {
  dev->reset_cause[RESET_CAUSE_RESET_FAILED]++;
  mt76_clear(dev, MT_MCU_DEBUG_RESET, MT_MCU_DEBUG_RESET_PSE);
 } else {
  dev->reset_cause[RESET_CAUSE_RESET_FAILED] = 0;
  mt76_clear(dev, MT_MCU_DEBUG_RESET, MT_MCU_DEBUG_RESET_QUEUES);
 }

 if (dev->reset_cause[RESET_CAUSE_RESET_FAILED] >= 3)
  dev->reset_cause[RESET_CAUSE_RESET_FAILED] = 0;
}
