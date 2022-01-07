
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_priv {int dev; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;


 int EOPNOTSUPP ;


 int stmmac_disable_all_queues (struct stmmac_priv*) ;
 int stmmac_enable_all_queues (struct stmmac_priv*) ;
 int stmmac_tc_setup_cls (struct stmmac_priv*,struct stmmac_priv*,void*) ;
 int stmmac_tc_setup_cls_u32 (struct stmmac_priv*,struct stmmac_priv*,void*) ;
 int tc_cls_can_offload_and_chain0 (int ,void*) ;

__attribute__((used)) static int stmmac_setup_tc_block_cb(enum tc_setup_type type, void *type_data,
        void *cb_priv)
{
 struct stmmac_priv *priv = cb_priv;
 int ret = -EOPNOTSUPP;

 if (!tc_cls_can_offload_and_chain0(priv->dev, type_data))
  return ret;

 stmmac_disable_all_queues(priv);

 switch (type) {
 case 128:
  ret = stmmac_tc_setup_cls_u32(priv, priv, type_data);
  break;
 case 129:
  ret = stmmac_tc_setup_cls(priv, priv, type_data);
  break;
 default:
  break;
 }

 stmmac_enable_all_queues(priv);
 return ret;
}
