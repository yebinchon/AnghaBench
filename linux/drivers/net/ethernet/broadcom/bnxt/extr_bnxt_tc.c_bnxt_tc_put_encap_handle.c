
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_tc_tunnel_node {scalar_t__ tunnel_handle; } ;
struct bnxt_tc_info {int encap_ht_params; int encap_table; } ;
struct bnxt {struct bnxt_tc_info* tc_info; } ;
typedef scalar_t__ __le32 ;


 scalar_t__ INVALID_TUNNEL_HANDLE ;
 int bnxt_tc_put_tunnel_node (struct bnxt*,int *,int *,struct bnxt_tc_tunnel_node*) ;
 int hwrm_cfa_encap_record_free (struct bnxt*,scalar_t__) ;

__attribute__((used)) static void bnxt_tc_put_encap_handle(struct bnxt *bp,
         struct bnxt_tc_tunnel_node *encap_node)
{
 __le32 encap_handle = encap_node->tunnel_handle;
 struct bnxt_tc_info *tc_info = bp->tc_info;
 int rc;

 rc = bnxt_tc_put_tunnel_node(bp, &tc_info->encap_table,
         &tc_info->encap_ht_params, encap_node);
 if (!rc && encap_handle != INVALID_TUNNEL_HANDLE)
  hwrm_cfa_encap_record_free(bp, encap_handle);
}
