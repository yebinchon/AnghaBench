
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
struct mt7603_dev {TYPE_3__ mt76; } ;


 int __mt76_mcu_restart (TYPE_3__*) ;
 int skb_queue_purge (int *) ;

void mt7603_mcu_exit(struct mt7603_dev *dev)
{
 __mt76_mcu_restart(&dev->mt76);
 skb_queue_purge(&dev->mt76.mmio.mcu.res_q);
}
