
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int netdev; } ;
struct nfp_net {int link_up; int link_status_lock; TYPE_2__ dp; TYPE_1__* port; } ;
struct TYPE_3__ {int flags; } ;


 int NFP_NET_CFG_STS ;
 int NFP_NET_CFG_STS_LINK ;
 int NFP_PORT_CHANGED ;
 int netdev_info (int ,char*) ;
 int netif_carrier_off (int ) ;
 int netif_carrier_on (int ) ;
 int nn_readl (struct nfp_net*,int ) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void nfp_net_read_link_status(struct nfp_net *nn)
{
 unsigned long flags;
 bool link_up;
 u32 sts;

 spin_lock_irqsave(&nn->link_status_lock, flags);

 sts = nn_readl(nn, NFP_NET_CFG_STS);
 link_up = !!(sts & NFP_NET_CFG_STS_LINK);

 if (nn->link_up == link_up)
  goto out;

 nn->link_up = link_up;
 if (nn->port)
  set_bit(NFP_PORT_CHANGED, &nn->port->flags);

 if (nn->link_up) {
  netif_carrier_on(nn->dp.netdev);
  netdev_info(nn->dp.netdev, "NIC Link is Up\n");
 } else {
  netif_carrier_off(nn->dp.netdev);
  netdev_info(nn->dp.netdev, "NIC Link is Down\n");
 }
out:
 spin_unlock_irqrestore(&nn->link_status_lock, flags);
}
