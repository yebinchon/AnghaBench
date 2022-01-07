
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_queue_mcast; int tx_queue_AC_VO; int tx_queue_AC_VI; int tx_queue_AC_BE; int tx_queue_AC_BK; } ;
struct b43_wldev {TYPE_1__ pio; } ;


 int B43_PS_AWAKE ;
 int b43_pio_tx_suspend_queue (int ) ;
 int b43_power_saving_ctl_bits (struct b43_wldev*,int ) ;

void b43_pio_tx_suspend(struct b43_wldev *dev)
{
 b43_power_saving_ctl_bits(dev, B43_PS_AWAKE);
 b43_pio_tx_suspend_queue(dev->pio.tx_queue_AC_BK);
 b43_pio_tx_suspend_queue(dev->pio.tx_queue_AC_BE);
 b43_pio_tx_suspend_queue(dev->pio.tx_queue_AC_VI);
 b43_pio_tx_suspend_queue(dev->pio.tx_queue_AC_VO);
 b43_pio_tx_suspend_queue(dev->pio.tx_queue_mcast);
}
