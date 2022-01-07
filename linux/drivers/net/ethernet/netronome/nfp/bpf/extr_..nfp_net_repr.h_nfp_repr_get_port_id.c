
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nfp_repr {TYPE_3__* dst; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int port_id; } ;
struct TYPE_5__ {TYPE_1__ port_info; } ;
struct TYPE_6__ {TYPE_2__ u; } ;


 struct nfp_repr* netdev_priv (struct net_device*) ;

__attribute__((used)) static inline int nfp_repr_get_port_id(struct net_device *netdev)
{
 struct nfp_repr *priv = netdev_priv(netdev);

 return priv->dst->u.port_info.port_id;
}
