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
struct priority_cos {int /*<<< orphan*/  cos; } ;
struct bnx2x {int dummy; } ;
typedef  enum cos_mode { ____Placeholder_cos_mode } cos_mode ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_ETH_Q ; 
 int /*<<< orphan*/  BNX2X_FCOE_Q ; 
 int /*<<< orphan*/  BNX2X_ISCSI_ACK_Q ; 
 int /*<<< orphan*/  BNX2X_ISCSI_Q ; 
 int /*<<< orphan*/  BNX2X_TOE_ACK_Q ; 
 int /*<<< orphan*/  BNX2X_TOE_Q ; 
 size_t LLFC_TRAFFIC_TYPE_FCOE ; 
 size_t LLFC_TRAFFIC_TYPE_ISCSI ; 
 size_t LLFC_TRAFFIC_TYPE_NW ; 
 int STATIC_COS ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(struct bnx2x *bp, enum cos_mode mode,
				       struct priority_cos *traffic_cos)
{
	FUNC0(bp, BNX2X_FCOE_Q,
			traffic_cos[LLFC_TRAFFIC_TYPE_FCOE].cos);
	FUNC0(bp, BNX2X_ISCSI_Q,
			traffic_cos[LLFC_TRAFFIC_TYPE_ISCSI].cos);
	FUNC0(bp, BNX2X_ISCSI_ACK_Q,
		traffic_cos[LLFC_TRAFFIC_TYPE_ISCSI].cos);
	if (mode != STATIC_COS) {
		/* required only in backward compatible COS mode */
		FUNC0(bp, BNX2X_ETH_Q,
				traffic_cos[LLFC_TRAFFIC_TYPE_NW].cos);
		FUNC0(bp, BNX2X_TOE_Q,
				traffic_cos[LLFC_TRAFFIC_TYPE_NW].cos);
		FUNC0(bp, BNX2X_TOE_ACK_Q,
				traffic_cos[LLFC_TRAFFIC_TYPE_NW].cos);
	}
}