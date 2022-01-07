
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct ice_pf {scalar_t__ sw_int_count; int oicr_idx; int hw; } ;
struct ice_netdev_priv {TYPE_1__* vsi; } ;
struct TYPE_2__ {struct ice_pf* back; } ;


 int GLINT_DYN_CTL (int ) ;
 int GLINT_DYN_CTL_INTENA_MSK_M ;
 int GLINT_DYN_CTL_SWINT_TRIG_M ;
 int GLINT_DYN_CTL_SW_ITR_INDX_M ;
 int netdev_info (struct net_device*,char*) ;
 struct ice_netdev_priv* netdev_priv (struct net_device*) ;
 int usleep_range (int,int) ;
 int wr32 (int *,int ,int) ;

__attribute__((used)) static u64 ice_intr_test(struct net_device *netdev)
{
 struct ice_netdev_priv *np = netdev_priv(netdev);
 struct ice_pf *pf = np->vsi->back;
 u16 swic_old = pf->sw_int_count;

 netdev_info(netdev, "interrupt test\n");

 wr32(&pf->hw, GLINT_DYN_CTL(pf->oicr_idx),
      GLINT_DYN_CTL_SW_ITR_INDX_M |
      GLINT_DYN_CTL_INTENA_MSK_M |
      GLINT_DYN_CTL_SWINT_TRIG_M);

 usleep_range(1000, 2000);
 return (swic_old == pf->sw_int_count);
}
