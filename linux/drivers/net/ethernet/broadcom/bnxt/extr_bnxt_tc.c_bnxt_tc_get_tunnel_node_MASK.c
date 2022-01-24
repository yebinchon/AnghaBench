#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct rhashtable_params {int dummy; } ;
struct rhashtable {int dummy; } ;
struct ip_tunnel_key {int dummy; } ;
struct bnxt_tc_tunnel_node {int /*<<< orphan*/  refcount; int /*<<< orphan*/  node; int /*<<< orphan*/  tunnel_handle; struct ip_tunnel_key key; } ;
struct bnxt {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INVALID_TUNNEL_HANDLE ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt_tc_tunnel_node*,int /*<<< orphan*/ ) ; 
 struct bnxt_tc_tunnel_node* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  rcu ; 
 int FUNC3 (struct rhashtable*,int /*<<< orphan*/ *,struct rhashtable_params) ; 
 struct bnxt_tc_tunnel_node* FUNC4 (struct rhashtable*,struct ip_tunnel_key*,struct rhashtable_params) ; 

__attribute__((used)) static struct bnxt_tc_tunnel_node *
FUNC5(struct bnxt *bp, struct rhashtable *tunnel_table,
			struct rhashtable_params *ht_params,
			struct ip_tunnel_key *tun_key)
{
	struct bnxt_tc_tunnel_node *tunnel_node;
	int rc;

	tunnel_node = FUNC4(tunnel_table, tun_key, *ht_params);
	if (!tunnel_node) {
		tunnel_node = FUNC1(sizeof(*tunnel_node), GFP_KERNEL);
		if (!tunnel_node) {
			rc = -ENOMEM;
			goto err;
		}

		tunnel_node->key = *tun_key;
		tunnel_node->tunnel_handle = INVALID_TUNNEL_HANDLE;
		rc = FUNC3(tunnel_table, &tunnel_node->node,
					    *ht_params);
		if (rc) {
			FUNC0(tunnel_node, rcu);
			goto err;
		}
	}
	tunnel_node->refcount++;
	return tunnel_node;
err:
	FUNC2(bp->dev, "error rc=%d", rc);
	return NULL;
}