
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnxt_tc_info {int enabled; int flow_table; int l2_table; int decap_l2_table; int decap_table; void* encap_ht_params; int encap_table; void* decap_ht_params; void* decap_l2_ht_params; void* l2_ht_params; void* flow_ht_params; void* packets_mask; void* bytes_mask; int lock; } ;
struct bnxt {int hwrm_spec_code; struct bnxt_tc_info* tc_info; TYPE_1__* dev; } ;
struct TYPE_2__ {int features; int hw_features; } ;


 int ENOMEM ;
 int ENOTSUPP ;
 int GFP_KERNEL ;
 int NETIF_F_HW_TC ;
 void* bnxt_tc_decap_l2_ht_params ;
 void* bnxt_tc_flow_ht_params ;
 void* bnxt_tc_l2_ht_params ;
 void* bnxt_tc_tunnel_ht_params ;
 int kfree (struct bnxt_tc_info*) ;
 struct bnxt_tc_info* kzalloc (int,int ) ;
 void* mask (int) ;
 int mutex_init (int *) ;
 int netdev_warn (TYPE_1__*,char*) ;
 int rhashtable_destroy (int *) ;
 int rhashtable_init (int *,void**) ;

int bnxt_init_tc(struct bnxt *bp)
{
 struct bnxt_tc_info *tc_info;
 int rc;

 if (bp->hwrm_spec_code < 0x10803) {
  netdev_warn(bp->dev,
       "Firmware does not support TC flower offload.\n");
  return -ENOTSUPP;
 }

 tc_info = kzalloc(sizeof(*tc_info), GFP_KERNEL);
 if (!tc_info)
  return -ENOMEM;
 mutex_init(&tc_info->lock);


 tc_info->bytes_mask = mask(36);
 tc_info->packets_mask = mask(28);

 tc_info->flow_ht_params = bnxt_tc_flow_ht_params;
 rc = rhashtable_init(&tc_info->flow_table, &tc_info->flow_ht_params);
 if (rc)
  goto free_tc_info;

 tc_info->l2_ht_params = bnxt_tc_l2_ht_params;
 rc = rhashtable_init(&tc_info->l2_table, &tc_info->l2_ht_params);
 if (rc)
  goto destroy_flow_table;

 tc_info->decap_l2_ht_params = bnxt_tc_decap_l2_ht_params;
 rc = rhashtable_init(&tc_info->decap_l2_table,
        &tc_info->decap_l2_ht_params);
 if (rc)
  goto destroy_l2_table;

 tc_info->decap_ht_params = bnxt_tc_tunnel_ht_params;
 rc = rhashtable_init(&tc_info->decap_table,
        &tc_info->decap_ht_params);
 if (rc)
  goto destroy_decap_l2_table;

 tc_info->encap_ht_params = bnxt_tc_tunnel_ht_params;
 rc = rhashtable_init(&tc_info->encap_table,
        &tc_info->encap_ht_params);
 if (rc)
  goto destroy_decap_table;

 tc_info->enabled = 1;
 bp->dev->hw_features |= NETIF_F_HW_TC;
 bp->dev->features |= NETIF_F_HW_TC;
 bp->tc_info = tc_info;
 return 0;

destroy_decap_table:
 rhashtable_destroy(&tc_info->decap_table);
destroy_decap_l2_table:
 rhashtable_destroy(&tc_info->decap_l2_table);
destroy_l2_table:
 rhashtable_destroy(&tc_info->l2_table);
destroy_flow_table:
 rhashtable_destroy(&tc_info->flow_table);
free_tc_info:
 kfree(tc_info);
 return rc;
}
