#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct bnx2x {int /*<<< orphan*/  vlan_credit; int /*<<< orphan*/  sp_state; TYPE_1__* fp; int /*<<< orphan*/  rss_conf_obj; int /*<<< orphan*/  vlans_pool; int /*<<< orphan*/  macs_pool; int /*<<< orphan*/  mcast_obj; int /*<<< orphan*/  rx_mode_obj; } ;
struct TYPE_2__ {int /*<<< orphan*/  cid; int /*<<< orphan*/  cl_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_FILTER_MCAST_PENDING ; 
 int /*<<< orphan*/  BNX2X_FILTER_RSS_CONF_PENDING ; 
 int /*<<< orphan*/  BNX2X_OBJ_TYPE_RX ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mcast_rdata ; 
 int /*<<< orphan*/  rss_rdata ; 

__attribute__((used)) static inline void FUNC10(struct bnx2x *bp)
{
	/* RX_MODE controlling object */
	FUNC6(bp, &bp->rx_mode_obj);

	/* multicast configuration controlling object */
	FUNC4(bp, &bp->mcast_obj, bp->fp->cl_id, bp->fp->cid,
			     FUNC0(bp), FUNC0(bp),
			     FUNC8(bp, mcast_rdata),
			     FUNC9(bp, mcast_rdata),
			     BNX2X_FILTER_MCAST_PENDING, &bp->sp_state,
			     BNX2X_OBJ_TYPE_RX);

	/* Setup CAM credit pools */
	FUNC3(bp, &bp->macs_pool, FUNC0(bp),
				   FUNC2(bp));

	FUNC7(bp, &bp->vlans_pool, FUNC0(bp),
				    FUNC2(bp));

	/* RSS configuration object */
	FUNC5(bp, &bp->rss_conf_obj, bp->fp->cl_id,
				  bp->fp->cid, FUNC0(bp), FUNC0(bp),
				  FUNC8(bp, rss_rdata),
				  FUNC9(bp, rss_rdata),
				  BNX2X_FILTER_RSS_CONF_PENDING, &bp->sp_state,
				  BNX2X_OBJ_TYPE_RX);

	bp->vlan_credit = FUNC1(bp, FUNC2(bp));
}