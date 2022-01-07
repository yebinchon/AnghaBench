
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct ice_vsi {struct ice_pf* back; } ;
struct ice_pf {TYPE_1__* first_sw; } ;
struct ice_netdev_priv {struct ice_vsi* vsi; } ;
struct TYPE_2__ {int bridge_mode; } ;


 int ndo_dflt_bridge_getlink (struct sk_buff*,int ,int ,struct net_device*,int ,int ,int ,int,int ,int *) ;
 struct ice_netdev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
ice_bridge_getlink(struct sk_buff *skb, u32 pid, u32 seq,
     struct net_device *dev, u32 filter_mask, int nlflags)
{
 struct ice_netdev_priv *np = netdev_priv(dev);
 struct ice_vsi *vsi = np->vsi;
 struct ice_pf *pf = vsi->back;
 u16 bmode;

 bmode = pf->first_sw->bridge_mode;

 return ndo_dflt_bridge_getlink(skb, pid, seq, dev, bmode, 0, 0, nlflags,
           filter_mask, ((void*)0));
}
