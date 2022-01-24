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
struct bnxt_tc_tunnel_node {scalar_t__ tunnel_handle; } ;
struct bnxt_tc_info {int /*<<< orphan*/  encap_ht_params; int /*<<< orphan*/  encap_table; } ;
struct bnxt {struct bnxt_tc_info* tc_info; } ;
typedef  scalar_t__ __le32 ;

/* Variables and functions */
 scalar_t__ INVALID_TUNNEL_HANDLE ; 
 int FUNC0 (struct bnxt*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct bnxt_tc_tunnel_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct bnxt *bp,
				     struct bnxt_tc_tunnel_node *encap_node)
{
	__le32 encap_handle = encap_node->tunnel_handle;
	struct bnxt_tc_info *tc_info = bp->tc_info;
	int rc;

	rc = FUNC0(bp, &tc_info->encap_table,
				     &tc_info->encap_ht_params, encap_node);
	if (!rc && encap_handle != INVALID_TUNNEL_HANDLE)
		FUNC1(bp, encap_handle);
}