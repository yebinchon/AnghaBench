
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_struct {int numqueues; int dev; } ;


 int netif_set_real_num_rx_queues (int ,int ) ;
 int netif_set_real_num_tx_queues (int ,int ) ;

__attribute__((used)) static void tun_set_real_num_queues(struct tun_struct *tun)
{
 netif_set_real_num_tx_queues(tun->dev, tun->numqueues);
 netif_set_real_num_rx_queues(tun->dev, tun->numqueues);
}
