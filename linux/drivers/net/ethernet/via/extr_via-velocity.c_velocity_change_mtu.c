
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_info {int numq; } ;
struct rx_info {int dummy; } ;
struct velocity_info {int lock; int mac_regs; int napi; struct tx_info tx; struct rx_info rx; int options; int dev; int pdev; struct net_device* netdev; } ;
struct net_device {int mtu; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int VELOCITY_INIT_COLD ;
 int kfree (struct velocity_info*) ;
 struct velocity_info* kzalloc (int,int ) ;
 int mac_enable_int (int ) ;
 int napi_disable (int *) ;
 int napi_enable (int *) ;
 struct velocity_info* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int velocity_free_rings (struct velocity_info*) ;
 int velocity_give_many_rx_descs (struct velocity_info*) ;
 int velocity_init_registers (struct velocity_info*,int ) ;
 int velocity_init_rings (struct velocity_info*,int) ;
 int velocity_shutdown (struct velocity_info*) ;

__attribute__((used)) static int velocity_change_mtu(struct net_device *dev, int new_mtu)
{
 struct velocity_info *vptr = netdev_priv(dev);
 int ret = 0;

 if (!netif_running(dev)) {
  dev->mtu = new_mtu;
  goto out_0;
 }

 if (dev->mtu != new_mtu) {
  struct velocity_info *tmp_vptr;
  unsigned long flags;
  struct rx_info rx;
  struct tx_info tx;

  tmp_vptr = kzalloc(sizeof(*tmp_vptr), GFP_KERNEL);
  if (!tmp_vptr) {
   ret = -ENOMEM;
   goto out_0;
  }

  tmp_vptr->netdev = dev;
  tmp_vptr->pdev = vptr->pdev;
  tmp_vptr->dev = vptr->dev;
  tmp_vptr->options = vptr->options;
  tmp_vptr->tx.numq = vptr->tx.numq;

  ret = velocity_init_rings(tmp_vptr, new_mtu);
  if (ret < 0)
   goto out_free_tmp_vptr_1;

  napi_disable(&vptr->napi);

  spin_lock_irqsave(&vptr->lock, flags);

  netif_stop_queue(dev);
  velocity_shutdown(vptr);

  rx = vptr->rx;
  tx = vptr->tx;

  vptr->rx = tmp_vptr->rx;
  vptr->tx = tmp_vptr->tx;

  tmp_vptr->rx = rx;
  tmp_vptr->tx = tx;

  dev->mtu = new_mtu;

  velocity_init_registers(vptr, VELOCITY_INIT_COLD);

  velocity_give_many_rx_descs(vptr);

  napi_enable(&vptr->napi);

  mac_enable_int(vptr->mac_regs);
  netif_start_queue(dev);

  spin_unlock_irqrestore(&vptr->lock, flags);

  velocity_free_rings(tmp_vptr);

out_free_tmp_vptr_1:
  kfree(tmp_vptr);
 }
out_0:
 return ret;
}
