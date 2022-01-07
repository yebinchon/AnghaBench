
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ieee_pfc {int pfc_en; int pfc_cap; } ;
struct fm10k_intfc {int pfc_en; } ;


 int IEEE_8021QAZ_MAX_TCS ;
 struct fm10k_intfc* netdev_priv (struct net_device*) ;

__attribute__((used)) static int fm10k_dcbnl_ieee_getpfc(struct net_device *dev, struct ieee_pfc *pfc)
{
 struct fm10k_intfc *interface = netdev_priv(dev);


 pfc->pfc_cap = IEEE_8021QAZ_MAX_TCS;
 pfc->pfc_en = interface->pfc_en;

 return 0;
}
