
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emac_adapter {int netdev; } ;


 int emac_sgmii_init (struct emac_adapter*) ;
 int emac_sgmii_link_init (struct emac_adapter*) ;
 int emac_sgmii_reset_prepare (struct emac_adapter*) ;
 int netdev_err (int ,char*,int) ;

__attribute__((used)) static void emac_sgmii_common_reset(struct emac_adapter *adpt)
{
 int ret;

 emac_sgmii_reset_prepare(adpt);
 emac_sgmii_link_init(adpt);

 ret = emac_sgmii_init(adpt);
 if (ret)
  netdev_err(adpt->netdev,
      "could not reinitialize internal PHY (error=%i)\n",
      ret);
}
