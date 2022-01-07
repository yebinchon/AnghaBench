
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sbni_in_stats {int dummy; } ;
struct sbni_flags {int slow_mode; size_t rxl; int fixed_rxl; int rate; int mac_addr; } ;
struct TYPE_2__ {int rate; int rxl; } ;
struct net_local {int state; size_t cur_rxl_index; int lock; TYPE_1__ csr1; int delta_rxl; struct sbni_flags in_stats; } ;
struct net_device {int flags; scalar_t__ base_addr; int dev_addr; } ;
struct ifreq {int ifr_data; int ifr_ifru; } ;


 int CAP_NET_ADMIN ;
 scalar_t__ CSR1 ;
 size_t DEF_RXL ;
 int DEF_RXL_DELTA ;
 int EFAULT ;
 int EOPNOTSUPP ;
 int EPERM ;
 int FL_SLOW_MODE ;
 int IFF_UP ;
 int PR_RES ;






 int capable (int ) ;
 int copy_from_user (char*,int ,int) ;
 int copy_to_user (int ,struct sbni_flags*,int) ;
 struct net_device* dev_get_by_name (int *,char*) ;
 int dev_put (struct net_device*) ;
 int emancipate (struct net_device*) ;
 int enslave (struct net_device*,struct net_device*) ;
 int init_net ;
 int memset (struct sbni_flags*,int ,int) ;
 int netdev_err (struct net_device*,char*,char*) ;
 struct net_local* netdev_priv (struct net_device*) ;
 int outb (int,scalar_t__) ;
 int * rxl_tab ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
sbni_ioctl( struct net_device *dev, struct ifreq *ifr, int cmd )
{
 struct net_local *nl = netdev_priv(dev);
 struct sbni_flags flags;
 int error = 0;






 switch( cmd ) {
 case 131 :
  if (copy_to_user( ifr->ifr_data, &nl->in_stats,
     sizeof(struct sbni_in_stats) ))
   error = -EFAULT;
  break;

 case 129 :
  if (!capable(CAP_NET_ADMIN))
   return -EPERM;
  memset( &nl->in_stats, 0, sizeof(struct sbni_in_stats) );
  break;

 case 130 :
  flags.mac_addr = *(u32 *)(dev->dev_addr + 3);
  flags.rate = nl->csr1.rate;
  flags.slow_mode = (nl->state & FL_SLOW_MODE) != 0;
  flags.rxl = nl->cur_rxl_index;
  flags.fixed_rxl = nl->delta_rxl == 0;

  if (copy_to_user( ifr->ifr_data, &flags, sizeof flags ))
   error = -EFAULT;
  break;

 case 128 :
  if (!capable(CAP_NET_ADMIN))
   return -EPERM;

  spin_lock( &nl->lock );
  flags = *(struct sbni_flags*) &ifr->ifr_ifru;
  if( flags.fixed_rxl )
   nl->delta_rxl = 0,
   nl->cur_rxl_index = flags.rxl;
  else
   nl->delta_rxl = DEF_RXL_DELTA,
   nl->cur_rxl_index = DEF_RXL;

  nl->csr1.rxl = rxl_tab[ nl->cur_rxl_index ];
  nl->csr1.rate = flags.rate;
  outb( *(u8 *)&nl->csr1 | PR_RES, dev->base_addr + CSR1 );
  spin_unlock( &nl->lock );
  break;
 default :
  return -EOPNOTSUPP;
 }

 return error;
}
