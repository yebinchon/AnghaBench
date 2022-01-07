
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mutex; } ;
struct TYPE_5__ {TYPE_1__ mcu; } ;
struct TYPE_6__ {int tx_dma_idx; TYPE_2__ mmio; } ;
struct mt76x02_dev {scalar_t__ tx_hang_check; TYPE_3__ mt76; int tx_hang_reset; scalar_t__ mcu_timeout; } ;


 scalar_t__ MT_TX_HANG_TH ;
 int memset (int ,int,int) ;
 scalar_t__ mt76x02_tx_hang (struct mt76x02_dev*) ;
 int mt76x02_watchdog_reset (struct mt76x02_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void mt76x02_check_tx_hang(struct mt76x02_dev *dev)
{
 if (mt76x02_tx_hang(dev)) {
  if (++dev->tx_hang_check >= MT_TX_HANG_TH)
   goto restart;
 } else {
  dev->tx_hang_check = 0;
 }

 if (dev->mcu_timeout)
  goto restart;

 return;

restart:
 mt76x02_watchdog_reset(dev);

 mutex_lock(&dev->mt76.mmio.mcu.mutex);
 dev->mcu_timeout = 0;
 mutex_unlock(&dev->mt76.mmio.mcu.mutex);

 dev->tx_hang_reset++;
 dev->tx_hang_check = 0;
 memset(dev->mt76.tx_dma_idx, 0xff,
        sizeof(dev->mt76.tx_dma_idx));
}
