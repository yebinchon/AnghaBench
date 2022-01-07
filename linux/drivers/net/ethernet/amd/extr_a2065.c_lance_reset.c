
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct lance_regs {int rdp; int rap; } ;
struct lance_private {struct lance_regs* ll; } ;


 int LE_C0_STOP ;
 int LE_CSR0 ;
 int init_restart_lance (struct lance_private*) ;
 int lance_init_ring (struct net_device*) ;
 int load_csrs (struct lance_private*) ;
 int netdev_dbg (struct net_device*,char*,int) ;
 struct lance_private* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int netif_trans_update (struct net_device*) ;

__attribute__((used)) static inline int lance_reset(struct net_device *dev)
{
 struct lance_private *lp = netdev_priv(dev);
 volatile struct lance_regs *ll = lp->ll;
 int status;


 ll->rap = LE_CSR0;
 ll->rdp = LE_C0_STOP;

 load_csrs(lp);

 lance_init_ring(dev);
 netif_trans_update(dev);
 netif_start_queue(dev);

 status = init_restart_lance(lp);
 netdev_dbg(dev, "Lance restart=%d\n", status);

 return status;
}
