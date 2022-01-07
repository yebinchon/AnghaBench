
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ag71xx {int ndev; } ;


 int ag71xx_ring_rx_clean (struct ag71xx*) ;
 int ag71xx_ring_tx_clean (struct ag71xx*) ;
 int ag71xx_rings_free (struct ag71xx*) ;
 int netdev_reset_queue (int ) ;

__attribute__((used)) static void ag71xx_rings_cleanup(struct ag71xx *ag)
{
 ag71xx_ring_rx_clean(ag);
 ag71xx_ring_tx_clean(ag);
 ag71xx_rings_free(ag);

 netdev_reset_queue(ag->ndev);
}
