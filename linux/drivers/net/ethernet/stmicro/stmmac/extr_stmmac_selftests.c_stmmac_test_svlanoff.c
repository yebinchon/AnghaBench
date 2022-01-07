
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dvlan; } ;
struct stmmac_priv {TYPE_1__ dma_cap; } ;


 int EOPNOTSUPP ;
 int stmmac_test_vlanoff_common (struct stmmac_priv*,int) ;

__attribute__((used)) static int stmmac_test_svlanoff(struct stmmac_priv *priv)
{
 if (!priv->dma_cap.dvlan)
  return -EOPNOTSUPP;
 return stmmac_test_vlanoff_common(priv, 1);
}
