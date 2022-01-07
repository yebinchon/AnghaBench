
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rhashtable_params {int dummy; } ;
struct rhashtable {int dummy; } ;
struct bnxt_tc_tunnel_node {scalar_t__ refcount; int node; } ;
struct bnxt {int dev; } ;


 int kfree_rcu (struct bnxt_tc_tunnel_node*,int ) ;
 int netdev_err (int ,char*,int) ;
 int rcu ;
 int rhashtable_remove_fast (struct rhashtable*,int *,struct rhashtable_params) ;

__attribute__((used)) static int bnxt_tc_put_tunnel_node(struct bnxt *bp,
       struct rhashtable *tunnel_table,
       struct rhashtable_params *ht_params,
       struct bnxt_tc_tunnel_node *tunnel_node)
{
 int rc;

 if (--tunnel_node->refcount == 0) {
  rc = rhashtable_remove_fast(tunnel_table, &tunnel_node->node,
          *ht_params);
  if (rc) {
   netdev_err(bp->dev, "rhashtable_remove_fast rc=%d", rc);
   rc = -1;
  }
  kfree_rcu(tunnel_node, rcu);
  return rc;
 } else {
  return tunnel_node->refcount;
 }
}
