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
typedef  int /*<<< orphan*/  u8 ;
struct bnx2x_virtf {int /*<<< orphan*/  leading_rss; int /*<<< orphan*/  filter_state; int /*<<< orphan*/  rss_conf_obj; int /*<<< orphan*/  mcast_obj; int /*<<< orphan*/  vf_vlans_pool; int /*<<< orphan*/  vf_macs_pool; int /*<<< orphan*/  abs_vfid; } ;
struct bnx2x_vf_queue {int is_leading; int sp_initialized; int /*<<< orphan*/  cid; int /*<<< orphan*/  vlan_mac_obj; int /*<<< orphan*/  vlan_obj; int /*<<< orphan*/  mac_obj; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_FILTER_MAC_PENDING ; 
 int /*<<< orphan*/  BNX2X_FILTER_MCAST_PENDING ; 
 int /*<<< orphan*/  BNX2X_FILTER_RSS_CONF_PENDING ; 
 int /*<<< orphan*/  BNX2X_FILTER_VLAN_MAC_PENDING ; 
 int /*<<< orphan*/  BNX2X_FILTER_VLAN_PENDING ; 
 int /*<<< orphan*/  BNX2X_OBJ_TYPE_RX_TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*,struct bnx2x_virtf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x*,struct bnx2x_virtf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mac_rdata ; 
 int /*<<< orphan*/  mcast_rdata ; 
 int /*<<< orphan*/  rss_rdata ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2x_virtf*,struct bnx2x_vf_queue*) ; 
 int /*<<< orphan*/  vlan_mac_rdata ; 
 int /*<<< orphan*/  vlan_rdata ; 

__attribute__((used)) static void FUNC9(struct bnx2x *bp, struct bnx2x_virtf *vf,
				   struct bnx2x_vf_queue *q)
{
	u8 cl_id = FUNC8(vf, q);
	u8 func_id = FUNC0(vf->abs_vfid);

	/* mac */
	FUNC1(bp, &q->mac_obj,
			   cl_id, q->cid, func_id,
			   FUNC6(bp, vf, mac_rdata),
			   FUNC7(bp, vf, mac_rdata),
			   BNX2X_FILTER_MAC_PENDING,
			   &vf->filter_state,
			   BNX2X_OBJ_TYPE_RX_TX,
			   &vf->vf_macs_pool);
	/* vlan */
	FUNC5(bp, &q->vlan_obj,
			    cl_id, q->cid, func_id,
			    FUNC6(bp, vf, vlan_rdata),
			    FUNC7(bp, vf, vlan_rdata),
			    BNX2X_FILTER_VLAN_PENDING,
			    &vf->filter_state,
			    BNX2X_OBJ_TYPE_RX_TX,
			    &vf->vf_vlans_pool);
	/* vlan-mac */
	FUNC4(bp, &q->vlan_mac_obj,
				cl_id, q->cid, func_id,
				FUNC6(bp, vf, vlan_mac_rdata),
				FUNC7(bp, vf, vlan_mac_rdata),
				BNX2X_FILTER_VLAN_MAC_PENDING,
				&vf->filter_state,
				BNX2X_OBJ_TYPE_RX_TX,
				&vf->vf_macs_pool,
				&vf->vf_vlans_pool);
	/* mcast */
	FUNC2(bp, &vf->mcast_obj, cl_id,
			     q->cid, func_id, func_id,
			     FUNC6(bp, vf, mcast_rdata),
			     FUNC7(bp, vf, mcast_rdata),
			     BNX2X_FILTER_MCAST_PENDING,
			     &vf->filter_state,
			     BNX2X_OBJ_TYPE_RX_TX);

	/* rss */
	FUNC3(bp, &vf->rss_conf_obj, cl_id, q->cid,
				  func_id, func_id,
				  FUNC6(bp, vf, rss_rdata),
				  FUNC7(bp, vf, rss_rdata),
				  BNX2X_FILTER_RSS_CONF_PENDING,
				  &vf->filter_state,
				  BNX2X_OBJ_TYPE_RX_TX);

	vf->leading_rss = cl_id;
	q->is_leading = true;
	q->sp_initialized = true;
}