
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_repr {int netdev; int app; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;


 int EOPNOTSUPP ;


 int nfp_flower_repr_offload (int ,int ,void*) ;
 int nfp_flower_setup_qos_offload (int ,int ,void*) ;
 int tc_cls_can_offload_and_chain0 (int ,void*) ;

__attribute__((used)) static int nfp_flower_setup_tc_block_cb(enum tc_setup_type type,
     void *type_data, void *cb_priv)
{
 struct nfp_repr *repr = cb_priv;

 if (!tc_cls_can_offload_and_chain0(repr->netdev, type_data))
  return -EOPNOTSUPP;

 switch (type) {
 case 129:
  return nfp_flower_repr_offload(repr->app, repr->netdev,
            type_data);
 case 128:
  return nfp_flower_setup_qos_offload(repr->app, repr->netdev,
          type_data);
 default:
  return -EOPNOTSUPP;
 }
}
