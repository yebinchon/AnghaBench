
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_tc_info {int encap_table; int decap_table; int decap_l2_table; int l2_table; int flow_table; } ;
struct bnxt {struct bnxt_tc_info* tc_info; } ;


 int bnxt_tc_flower_enabled (struct bnxt*) ;
 int kfree (struct bnxt_tc_info*) ;
 int rhashtable_destroy (int *) ;

void bnxt_shutdown_tc(struct bnxt *bp)
{
 struct bnxt_tc_info *tc_info = bp->tc_info;

 if (!bnxt_tc_flower_enabled(bp))
  return;

 rhashtable_destroy(&tc_info->flow_table);
 rhashtable_destroy(&tc_info->l2_table);
 rhashtable_destroy(&tc_info->decap_l2_table);
 rhashtable_destroy(&tc_info->decap_table);
 rhashtable_destroy(&tc_info->encap_table);
 kfree(tc_info);
 bp->tc_info = ((void*)0);
}
