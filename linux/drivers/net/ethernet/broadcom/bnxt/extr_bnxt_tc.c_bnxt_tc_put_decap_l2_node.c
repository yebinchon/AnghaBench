
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_tc_l2_node {scalar_t__ refcount; int node; } ;
struct bnxt_tc_info {int decap_l2_ht_params; int decap_l2_table; } ;
struct bnxt_tc_flow_node {int decap_l2_list_node; struct bnxt_tc_l2_node* decap_l2_node; } ;
struct bnxt {int dev; struct bnxt_tc_info* tc_info; } ;


 int kfree_rcu (struct bnxt_tc_l2_node*,int ) ;
 int list_del (int *) ;
 int netdev_err (int ,char*,int) ;
 int rcu ;
 int rhashtable_remove_fast (int *,int *,int ) ;

__attribute__((used)) static void bnxt_tc_put_decap_l2_node(struct bnxt *bp,
          struct bnxt_tc_flow_node *flow_node)
{
 struct bnxt_tc_l2_node *decap_l2_node = flow_node->decap_l2_node;
 struct bnxt_tc_info *tc_info = bp->tc_info;
 int rc;


 list_del(&flow_node->decap_l2_list_node);
 if (--decap_l2_node->refcount == 0) {
  rc = rhashtable_remove_fast(&tc_info->decap_l2_table,
          &decap_l2_node->node,
          tc_info->decap_l2_ht_params);
  if (rc)
   netdev_err(bp->dev, "rhashtable_remove_fast rc=%d", rc);
  kfree_rcu(decap_l2_node, rcu);
 }
}
