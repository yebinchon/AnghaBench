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
struct bnx2x {TYPE_1__* fp; int /*<<< orphan*/  rx_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  cl_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_RX_MODE_FCOE_ETH ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  RAMROD_RX ; 
 int /*<<< orphan*/  RAMROD_TX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long*) ; 
 int FUNC2 (struct bnx2x*,int /*<<< orphan*/ ,unsigned long*,unsigned long*) ; 
 int FUNC3 (struct bnx2x*,int /*<<< orphan*/ ,unsigned long,unsigned long,unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct bnx2x *bp)
{
	unsigned long rx_mode_flags = 0, ramrod_flags = 0;
	unsigned long rx_accept_flags = 0, tx_accept_flags = 0;
	int rc;

	if (!FUNC0(bp))
		/* Configure rx_mode of FCoE Queue */
		FUNC1(BNX2X_RX_MODE_FCOE_ETH, &rx_mode_flags);

	rc = FUNC2(bp, bp->rx_mode, &rx_accept_flags,
				     &tx_accept_flags);
	if (rc)
		return rc;

	FUNC1(RAMROD_RX, &ramrod_flags);
	FUNC1(RAMROD_TX, &ramrod_flags);

	return FUNC3(bp, bp->fp->cl_id, rx_mode_flags,
				   rx_accept_flags, tx_accept_flags,
				   ramrod_flags);
}