
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40e_netdev_priv {TYPE_1__* vsi; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;
struct TYPE_2__ {int netdev; } ;


 int EOPNOTSUPP ;

 int i40e_setup_tc_cls_flower (struct i40e_netdev_priv*,void*) ;
 int tc_cls_can_offload_and_chain0 (int ,void*) ;

__attribute__((used)) static int i40e_setup_tc_block_cb(enum tc_setup_type type, void *type_data,
      void *cb_priv)
{
 struct i40e_netdev_priv *np = cb_priv;

 if (!tc_cls_can_offload_and_chain0(np->vsi->netdev, type_data))
  return -EOPNOTSUPP;

 switch (type) {
 case 128:
  return i40e_setup_tc_cls_flower(np, type_data);

 default:
  return -EOPNOTSUPP;
 }
}
