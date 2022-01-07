
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_flower_indr_block_cb_priv {int netdev; int app; } ;
struct TYPE_2__ {scalar_t__ chain_index; } ;
struct flow_cls_offload {TYPE_1__ common; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;


 int EOPNOTSUPP ;

 int nfp_flower_repr_offload (int ,int ,void*) ;

__attribute__((used)) static int nfp_flower_setup_indr_block_cb(enum tc_setup_type type,
       void *type_data, void *cb_priv)
{
 struct nfp_flower_indr_block_cb_priv *priv = cb_priv;
 struct flow_cls_offload *flower = type_data;

 if (flower->common.chain_index)
  return -EOPNOTSUPP;

 switch (type) {
 case 128:
  return nfp_flower_repr_offload(priv->app, priv->netdev,
            type_data);
 default:
  return -EOPNOTSUPP;
 }
}
