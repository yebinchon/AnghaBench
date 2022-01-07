
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct virtnet_info {int max_queue_pairs; TYPE_1__* sq; TYPE_2__* rq; int refill; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int napi; int xdp_rxq; } ;
struct TYPE_3__ {int napi; } ;


 int cancel_delayed_work_sync (int *) ;
 int napi_disable (int *) ;
 struct virtnet_info* netdev_priv (struct net_device*) ;
 int virtnet_napi_tx_disable (int *) ;
 int xdp_rxq_info_unreg (int *) ;

__attribute__((used)) static int virtnet_close(struct net_device *dev)
{
 struct virtnet_info *vi = netdev_priv(dev);
 int i;


 cancel_delayed_work_sync(&vi->refill);

 for (i = 0; i < vi->max_queue_pairs; i++) {
  xdp_rxq_info_unreg(&vi->rq[i].xdp_rxq);
  napi_disable(&vi->rq[i].napi);
  virtnet_napi_tx_disable(&vi->sq[i].napi);
 }

 return 0;
}
