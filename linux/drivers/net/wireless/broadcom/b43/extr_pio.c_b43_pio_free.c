
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_pio {int dummy; } ;
struct b43_wldev {struct b43_pio pio; } ;


 int b43_using_pio_transfers (struct b43_wldev*) ;
 int destroy_queue_rx (struct b43_pio*,int ) ;
 int destroy_queue_tx (struct b43_pio*,int ) ;
 int rx_queue ;
 int tx_queue_AC_BE ;
 int tx_queue_AC_BK ;
 int tx_queue_AC_VI ;
 int tx_queue_AC_VO ;
 int tx_queue_mcast ;

void b43_pio_free(struct b43_wldev *dev)
{
 struct b43_pio *pio;

 if (!b43_using_pio_transfers(dev))
  return;
 pio = &dev->pio;

 destroy_queue_rx(pio, rx_queue);
 destroy_queue_tx(pio, tx_queue_mcast);
 destroy_queue_tx(pio, tx_queue_AC_VO);
 destroy_queue_tx(pio, tx_queue_AC_VI);
 destroy_queue_tx(pio, tx_queue_AC_BE);
 destroy_queue_tx(pio, tx_queue_AC_BK);
}
