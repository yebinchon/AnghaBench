
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ is_vf; } ;
struct nfp_net {int id; scalar_t__ vnic_no_name; TYPE_1__ dp; scalar_t__ port; } ;
struct net_device {int dummy; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 struct nfp_net* netdev_priv (struct net_device*) ;
 int snprintf (char*,size_t,char*,int) ;

__attribute__((used)) static int
nfp_net_get_phys_port_name(struct net_device *netdev, char *name, size_t len)
{
 struct nfp_net *nn = netdev_priv(netdev);
 int n;




 if (nn->port)
  return -EOPNOTSUPP;

 if (nn->dp.is_vf || nn->vnic_no_name)
  return -EOPNOTSUPP;

 n = snprintf(name, len, "n%d", nn->id);
 if (n >= len)
  return -EINVAL;

 return 0;
}
