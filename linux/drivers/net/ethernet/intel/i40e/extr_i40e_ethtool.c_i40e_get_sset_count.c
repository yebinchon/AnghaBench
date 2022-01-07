
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct i40e_vsi {struct i40e_pf* back; } ;
struct TYPE_2__ {int pf_id; } ;
struct i40e_pf {TYPE_1__ hw; } ;
struct i40e_netdev_priv {struct i40e_vsi* vsi; } ;


 int EOPNOTSUPP ;



 int I40E_GL_PRIV_FLAGS_STR_LEN ;
 int I40E_PRIV_FLAGS_STR_LEN ;
 int I40E_TEST_LEN ;
 int i40e_get_stats_count (struct net_device*) ;
 struct i40e_netdev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int i40e_get_sset_count(struct net_device *netdev, int sset)
{
 struct i40e_netdev_priv *np = netdev_priv(netdev);
 struct i40e_vsi *vsi = np->vsi;
 struct i40e_pf *pf = vsi->back;

 switch (sset) {
 case 128:
  return I40E_TEST_LEN;
 case 129:
  return i40e_get_stats_count(netdev);
 case 130:
  return I40E_PRIV_FLAGS_STR_LEN +
   (pf->hw.pf_id == 0 ? I40E_GL_PRIV_FLAGS_STR_LEN : 0);
 default:
  return -EOPNOTSUPP;
 }
}
