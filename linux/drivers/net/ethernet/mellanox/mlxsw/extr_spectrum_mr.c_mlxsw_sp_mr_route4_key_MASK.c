#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mr_mfc {int dummy; } ;
struct mlxsw_sp_mr_table {int /*<<< orphan*/  vr_id; } ;
struct TYPE_8__ {void* addr4; } ;
struct TYPE_7__ {void* addr4; } ;
struct TYPE_6__ {void* addr4; } ;
struct TYPE_5__ {int /*<<< orphan*/  addr4; } ;
struct mlxsw_sp_mr_route_key {TYPE_4__ source_mask; TYPE_3__ source; TYPE_2__ group_mask; TYPE_1__ group; int /*<<< orphan*/  proto; int /*<<< orphan*/  vrid; } ;
struct mfc_cache {void* mfc_origin; int /*<<< orphan*/  mfc_mcastgrp; } ;

/* Variables and functions */
 int INADDR_ANY ; 
 int /*<<< orphan*/  MLXSW_SP_L3_PROTO_IPV4 ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp_mr_route_key*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct mlxsw_sp_mr_table *mr_table,
				   struct mlxsw_sp_mr_route_key *key,
				   struct mr_mfc *c)
{
	const struct mfc_cache *mfc = (struct mfc_cache *) c;
	bool starg;

	starg = (mfc->mfc_origin == FUNC0(INADDR_ANY));

	FUNC1(key, 0, sizeof(*key));
	key->vrid = mr_table->vr_id;
	key->proto = MLXSW_SP_L3_PROTO_IPV4;
	key->group.addr4 = mfc->mfc_mcastgrp;
	key->group_mask.addr4 = FUNC0(0xffffffff);
	key->source.addr4 = mfc->mfc_origin;
	key->source_mask.addr4 = FUNC0(starg ? 0 : 0xffffffff);
}