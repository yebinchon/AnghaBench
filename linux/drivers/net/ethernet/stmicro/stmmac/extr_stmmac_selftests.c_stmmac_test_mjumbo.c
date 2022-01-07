
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct stmmac_priv {TYPE_1__* plat; } ;
struct TYPE_2__ {int tx_queues_to_use; } ;


 int EOPNOTSUPP ;
 int __stmmac_test_jumbo (struct stmmac_priv*,int) ;

__attribute__((used)) static int stmmac_test_mjumbo(struct stmmac_priv *priv)
{
 u32 chan, tx_cnt = priv->plat->tx_queues_to_use;
 int ret;

 if (tx_cnt <= 1)
  return -EOPNOTSUPP;

 for (chan = 0; chan < tx_cnt; chan++) {
  ret = __stmmac_test_jumbo(priv, chan);
  if (ret)
   return ret;
 }

 return 0;
}
