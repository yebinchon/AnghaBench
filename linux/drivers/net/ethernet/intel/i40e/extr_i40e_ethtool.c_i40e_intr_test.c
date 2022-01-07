
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct i40e_pf {scalar_t__ sw_int_count; int hw; } ;
struct i40e_netdev_priv {TYPE_1__* vsi; } ;
struct TYPE_2__ {struct i40e_pf* back; } ;


 int I40E_PFINT_DYN_CTL0 ;
 int I40E_PFINT_DYN_CTL0_INTENA_MASK ;
 int I40E_PFINT_DYN_CTL0_ITR_INDX_MASK ;
 int I40E_PFINT_DYN_CTL0_SWINT_TRIG_MASK ;
 int I40E_PFINT_DYN_CTL0_SW_ITR_INDX_ENA_MASK ;
 int I40E_PFINT_DYN_CTL0_SW_ITR_INDX_MASK ;
 int hw ;
 struct i40e_netdev_priv* netdev_priv (struct net_device*) ;
 int netif_info (struct i40e_pf*,int ,struct net_device*,char*) ;
 int usleep_range (int,int) ;
 int wr32 (int *,int ,int) ;

__attribute__((used)) static u64 i40e_intr_test(struct net_device *netdev, u64 *data)
{
 struct i40e_netdev_priv *np = netdev_priv(netdev);
 struct i40e_pf *pf = np->vsi->back;
 u16 swc_old = pf->sw_int_count;

 netif_info(pf, hw, netdev, "interrupt test\n");
 wr32(&pf->hw, I40E_PFINT_DYN_CTL0,
      (I40E_PFINT_DYN_CTL0_INTENA_MASK |
       I40E_PFINT_DYN_CTL0_SWINT_TRIG_MASK |
       I40E_PFINT_DYN_CTL0_ITR_INDX_MASK |
       I40E_PFINT_DYN_CTL0_SW_ITR_INDX_ENA_MASK |
       I40E_PFINT_DYN_CTL0_SW_ITR_INDX_MASK));
 usleep_range(1000, 2000);
 *data = (swc_old == pf->sw_int_count);

 return *data;
}
