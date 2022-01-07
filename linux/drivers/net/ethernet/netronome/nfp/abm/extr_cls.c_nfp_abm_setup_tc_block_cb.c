
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ protocol; int extack; } ;
struct tc_cls_u32_offload {int command; int knode; TYPE_1__ common; } ;
struct nfp_repr {int netdev; struct nfp_abm_link* app_priv; } ;
struct nfp_abm_link {int dummy; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;


 int EOPNOTSUPP ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int NL_SET_ERR_MSG_MOD (int ,char*) ;



 int TC_SETUP_CLSU32 ;
 scalar_t__ htons (int ) ;
 int nfp_abm_u32_knode_delete (struct nfp_abm_link*,int *) ;
 int nfp_abm_u32_knode_replace (struct nfp_abm_link*,int *,scalar_t__,int ) ;
 int tc_cls_can_offload_and_chain0 (int ,TYPE_1__*) ;

__attribute__((used)) static int nfp_abm_setup_tc_block_cb(enum tc_setup_type type,
         void *type_data, void *cb_priv)
{
 struct tc_cls_u32_offload *cls_u32 = type_data;
 struct nfp_repr *repr = cb_priv;
 struct nfp_abm_link *alink;

 alink = repr->app_priv;

 if (type != TC_SETUP_CLSU32) {
  NL_SET_ERR_MSG_MOD(cls_u32->common.extack,
       "only offload of u32 classifier supported");
  return -EOPNOTSUPP;
 }
 if (!tc_cls_can_offload_and_chain0(repr->netdev, &cls_u32->common))
  return -EOPNOTSUPP;

 if (cls_u32->common.protocol != htons(ETH_P_IP) &&
     cls_u32->common.protocol != htons(ETH_P_IPV6)) {
  NL_SET_ERR_MSG_MOD(cls_u32->common.extack,
       "only IP and IPv6 supported as filter protocol");
  return -EOPNOTSUPP;
 }

 switch (cls_u32->command) {
 case 129:
 case 128:
  return nfp_abm_u32_knode_replace(alink, &cls_u32->knode,
       cls_u32->common.protocol,
       cls_u32->common.extack);
 case 130:
  nfp_abm_u32_knode_delete(alink, &cls_u32->knode);
  return 0;
 default:
  return -EOPNOTSUPP;
 }
}
