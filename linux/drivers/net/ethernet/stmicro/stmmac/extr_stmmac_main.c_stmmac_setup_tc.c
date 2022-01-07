
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_priv {int dummy; } ;
struct net_device {int dummy; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;


 int EOPNOTSUPP ;


 int flow_block_cb_setup_simple (void*,int *,int ,struct stmmac_priv*,struct stmmac_priv*,int) ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;
 int stmmac_block_cb_list ;
 int stmmac_setup_tc_block_cb ;
 int stmmac_tc_setup_cbs (struct stmmac_priv*,struct stmmac_priv*,void*) ;

__attribute__((used)) static int stmmac_setup_tc(struct net_device *ndev, enum tc_setup_type type,
      void *type_data)
{
 struct stmmac_priv *priv = netdev_priv(ndev);

 switch (type) {
 case 129:
  return flow_block_cb_setup_simple(type_data,
        &stmmac_block_cb_list,
        stmmac_setup_tc_block_cb,
        priv, priv, 1);
 case 128:
  return stmmac_tc_setup_cbs(priv, priv, type_data);
 default:
  return -EOPNOTSUPP;
 }
}
