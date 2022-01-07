
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct enetc_pf {int total_vfs; } ;
struct enetc_ndev_priv {TYPE_1__* si; } ;
typedef scalar_t__ __be16 ;
struct TYPE_2__ {int errata; int hw; } ;


 int EINVAL ;
 int ENETC_ERR_VLAN_ISOL ;
 int EOPNOTSUPP ;
 int EPROTONOSUPPORT ;
 int ETH_P_8021Q ;
 int enetc_set_isol_vlan (int *,int,int ,int ) ;
 struct enetc_pf* enetc_si_priv (TYPE_1__*) ;
 scalar_t__ htons (int ) ;
 struct enetc_ndev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int enetc_pf_set_vf_vlan(struct net_device *ndev, int vf, u16 vlan,
    u8 qos, __be16 proto)
{
 struct enetc_ndev_priv *priv = netdev_priv(ndev);
 struct enetc_pf *pf = enetc_si_priv(priv->si);

 if (priv->si->errata & ENETC_ERR_VLAN_ISOL)
  return -EOPNOTSUPP;

 if (vf >= pf->total_vfs)
  return -EINVAL;

 if (proto != htons(ETH_P_8021Q))

  return -EPROTONOSUPPORT;

 enetc_set_isol_vlan(&priv->si->hw, vf + 1, vlan, qos);
 return 0;
}
