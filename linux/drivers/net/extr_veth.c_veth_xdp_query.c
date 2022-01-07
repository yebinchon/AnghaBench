
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct veth_priv {struct bpf_prog* _xdp_prog; } ;
struct net_device {int dummy; } ;
struct bpf_prog {TYPE_1__* aux; } ;
struct TYPE_2__ {int id; } ;


 struct veth_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 veth_xdp_query(struct net_device *dev)
{
 struct veth_priv *priv = netdev_priv(dev);
 const struct bpf_prog *xdp_prog;

 xdp_prog = priv->_xdp_prog;
 if (xdp_prog)
  return xdp_prog->aux->id;

 return 0;
}
