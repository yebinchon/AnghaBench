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
struct bnx2x_fastpath {scalar_t__ mode; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_Q_FLG_FCOE ; 
 int /*<<< orphan*/  BNX2X_Q_FLG_FORCE_DEFAULT_PRI ; 
 int /*<<< orphan*/  BNX2X_Q_FLG_LEADING_RSS ; 
 int /*<<< orphan*/  BNX2X_Q_FLG_MCAST ; 
 int /*<<< orphan*/  BNX2X_Q_FLG_OV ; 
 int /*<<< orphan*/  BNX2X_Q_FLG_SILENT_VLAN_REM ; 
 int /*<<< orphan*/  BNX2X_Q_FLG_TPA ; 
 int /*<<< orphan*/  BNX2X_Q_FLG_TPA_GRO ; 
 int /*<<< orphan*/  BNX2X_Q_FLG_TPA_IPV6 ; 
 int /*<<< orphan*/  BNX2X_Q_FLG_VLAN ; 
 scalar_t__ FUNC0 (struct bnx2x_fastpath*) ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 scalar_t__ FUNC2 (struct bnx2x*) ; 
 scalar_t__ TPA_MODE_DISABLED ; 
 scalar_t__ TPA_MODE_GRO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long*) ; 
 unsigned long FUNC4 (struct bnx2x*,struct bnx2x_fastpath*,int) ; 

__attribute__((used)) static unsigned long FUNC5(struct bnx2x *bp,
				       struct bnx2x_fastpath *fp,
				       bool leading)
{
	unsigned long flags = 0;

	/* calculate other queue flags */
	if (FUNC2(bp))
		FUNC3(BNX2X_Q_FLG_OV, &flags);

	if (FUNC0(fp)) {
		FUNC3(BNX2X_Q_FLG_FCOE, &flags);
		/* For FCoE - force usage of default priority (for afex) */
		FUNC3(BNX2X_Q_FLG_FORCE_DEFAULT_PRI, &flags);
	}

	if (fp->mode != TPA_MODE_DISABLED) {
		FUNC3(BNX2X_Q_FLG_TPA, &flags);
		FUNC3(BNX2X_Q_FLG_TPA_IPV6, &flags);
		if (fp->mode == TPA_MODE_GRO)
			FUNC3(BNX2X_Q_FLG_TPA_GRO, &flags);
	}

	if (leading) {
		FUNC3(BNX2X_Q_FLG_LEADING_RSS, &flags);
		FUNC3(BNX2X_Q_FLG_MCAST, &flags);
	}

	/* Always set HW VLAN stripping */
	FUNC3(BNX2X_Q_FLG_VLAN, &flags);

	/* configure silent vlan removal */
	if (FUNC1(bp))
		FUNC3(BNX2X_Q_FLG_SILENT_VLAN_REM, &flags);

	return flags | FUNC4(bp, fp, true);
}