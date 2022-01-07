
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int res_q; } ;
struct TYPE_5__ {TYPE_1__ mcu; } ;
struct TYPE_6__ {TYPE_2__ mmio; } ;
struct mt7615_dev {TYPE_3__ mt76; } ;


 int MT_CFG_LPCR_HOST ;
 int MT_CFG_LPCR_HOST_FW_OWN ;
 int __mt76_mcu_restart (TYPE_3__*) ;
 int mt76_wr (struct mt7615_dev*,int ,int ) ;
 int skb_queue_purge (int *) ;

void mt7615_mcu_exit(struct mt7615_dev *dev)
{
 __mt76_mcu_restart(&dev->mt76);
 mt76_wr(dev, MT_CFG_LPCR_HOST, MT_CFG_LPCR_HOST_FW_OWN);
 skb_queue_purge(&dev->mt76.mmio.mcu.res_q);
}
