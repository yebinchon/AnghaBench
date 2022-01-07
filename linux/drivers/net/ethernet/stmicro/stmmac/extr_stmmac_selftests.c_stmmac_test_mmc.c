
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stmmac_counters {scalar_t__ mmc_tx_framecount_g; } ;
struct TYPE_2__ {int rmon; } ;
struct stmmac_priv {int mmcaddr; struct stmmac_counters mmc; TYPE_1__ dma_cap; } ;
typedef int initial ;
typedef int final ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int memset (struct stmmac_counters*,int ,int) ;
 int stmmac_mmc_read (struct stmmac_priv*,int ,struct stmmac_counters*) ;
 int stmmac_test_mac_loopback (struct stmmac_priv*) ;

__attribute__((used)) static int stmmac_test_mmc(struct stmmac_priv *priv)
{
 struct stmmac_counters initial, final;
 int ret;

 memset(&initial, 0, sizeof(initial));
 memset(&final, 0, sizeof(final));

 if (!priv->dma_cap.rmon)
  return -EOPNOTSUPP;


 stmmac_mmc_read(priv, priv->mmcaddr, &priv->mmc);

 ret = stmmac_test_mac_loopback(priv);
 if (ret)
  return ret;


 stmmac_mmc_read(priv, priv->mmcaddr, &final);






 if (final.mmc_tx_framecount_g <= initial.mmc_tx_framecount_g)
  return -EINVAL;

 return 0;
}
