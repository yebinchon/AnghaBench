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
struct bnxt_tc_tunnel_node {scalar_t__ refcount; int /*<<< orphan*/  node; } ;
struct bnxt {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnxt_tc_tunnel_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  rcu ; 
 int FUNC2 (struct rhashtable*,int /*<<< orphan*/ *,struct rhashtable_params) ; 

__attribute__((used)) static int FUNC3(struct bnxt *bp,
				   struct rhashtable *tunnel_table,
				   struct rhashtable_params *ht_params,
				   struct bnxt_tc_tunnel_node *tunnel_node)
{
	int rc;

	if (--tunnel_node->refcount == 0) {
		rc =  FUNC2(tunnel_table, &tunnel_node->node,
					     *ht_params);
		if (rc) {
			FUNC1(bp->dev, "rhashtable_remove_fast rc=%d", rc);
			rc = -1;
		}
		FUNC0(tunnel_node, rcu);
		return rc;
	} else {
		return tunnel_node->refcount;
	}
}