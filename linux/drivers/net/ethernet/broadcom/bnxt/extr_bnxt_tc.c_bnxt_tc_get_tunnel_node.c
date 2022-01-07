
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rhashtable_params {int dummy; } ;
struct rhashtable {int dummy; } ;
struct ip_tunnel_key {int dummy; } ;
struct bnxt_tc_tunnel_node {int refcount; int node; int tunnel_handle; struct ip_tunnel_key key; } ;
struct bnxt {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INVALID_TUNNEL_HANDLE ;
 int kfree_rcu (struct bnxt_tc_tunnel_node*,int ) ;
 struct bnxt_tc_tunnel_node* kzalloc (int,int ) ;
 int netdev_info (int ,char*,int) ;
 int rcu ;
 int rhashtable_insert_fast (struct rhashtable*,int *,struct rhashtable_params) ;
 struct bnxt_tc_tunnel_node* rhashtable_lookup_fast (struct rhashtable*,struct ip_tunnel_key*,struct rhashtable_params) ;

__attribute__((used)) static struct bnxt_tc_tunnel_node *
bnxt_tc_get_tunnel_node(struct bnxt *bp, struct rhashtable *tunnel_table,
   struct rhashtable_params *ht_params,
   struct ip_tunnel_key *tun_key)
{
 struct bnxt_tc_tunnel_node *tunnel_node;
 int rc;

 tunnel_node = rhashtable_lookup_fast(tunnel_table, tun_key, *ht_params);
 if (!tunnel_node) {
  tunnel_node = kzalloc(sizeof(*tunnel_node), GFP_KERNEL);
  if (!tunnel_node) {
   rc = -ENOMEM;
   goto err;
  }

  tunnel_node->key = *tun_key;
  tunnel_node->tunnel_handle = INVALID_TUNNEL_HANDLE;
  rc = rhashtable_insert_fast(tunnel_table, &tunnel_node->node,
         *ht_params);
  if (rc) {
   kfree_rcu(tunnel_node, rcu);
   goto err;
  }
 }
 tunnel_node->refcount++;
 return tunnel_node;
err:
 netdev_info(bp->dev, "error rc=%d", rc);
 return ((void*)0);
}
