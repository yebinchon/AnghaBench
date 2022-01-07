
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct net_device {int dummy; } ;
struct ice_vsi {struct ice_pf* back; } ;
struct ice_priv_flag {int bitno; } ;
struct ice_pf {int flags; } ;
struct ice_netdev_priv {struct ice_vsi* vsi; } ;


 size_t BIT (size_t) ;
 size_t ICE_PRIV_FLAG_ARRAY_SIZE ;
 struct ice_priv_flag* ice_gstrings_priv_flags ;
 struct ice_netdev_priv* netdev_priv (struct net_device*) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static u32 ice_get_priv_flags(struct net_device *netdev)
{
 struct ice_netdev_priv *np = netdev_priv(netdev);
 struct ice_vsi *vsi = np->vsi;
 struct ice_pf *pf = vsi->back;
 u32 i, ret_flags = 0;

 for (i = 0; i < ICE_PRIV_FLAG_ARRAY_SIZE; i++) {
  const struct ice_priv_flag *priv_flag;

  priv_flag = &ice_gstrings_priv_flags[i];

  if (test_bit(priv_flag->bitno, pf->flags))
   ret_flags |= BIT(i);
 }

 return ret_flags;
}
