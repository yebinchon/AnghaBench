
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ionic_lif {int state; int netdev; } ;


 int EBUSY ;
 int IONIC_LIF_QUEUE_RESET ;
 int clear_bit (int ,int ) ;
 int ionic_open (int ) ;
 int ionic_stop (int ) ;
 int ionic_wait_for_bit (struct ionic_lif*,int ) ;
 int netif_running (int ) ;
 int netif_trans_update (int ) ;

int ionic_reset_queues(struct ionic_lif *lif)
{
 bool running;
 int err = 0;


 netif_trans_update(lif->netdev);

 if (!ionic_wait_for_bit(lif, IONIC_LIF_QUEUE_RESET))
  return -EBUSY;

 running = netif_running(lif->netdev);
 if (running)
  err = ionic_stop(lif->netdev);
 if (!err && running)
  ionic_open(lif->netdev);

 clear_bit(IONIC_LIF_QUEUE_RESET, lif->state);

 return err;
}
