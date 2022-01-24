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
typedef  int /*<<< orphan*/  u16 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NIG_REG_NGE_PORT ; 
 int /*<<< orphan*/  PBF_REG_NGE_PORT ; 
 int /*<<< orphan*/  PRS_REG_NGE_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct qed_hwfn *p_hwfn,
			      struct qed_ptt *p_ptt, u16 dest_port)
{
	/* Update PRS register */
	FUNC0(p_hwfn, p_ptt, PRS_REG_NGE_PORT, dest_port);

	/* Update NIG register */
	FUNC0(p_hwfn, p_ptt, NIG_REG_NGE_PORT, dest_port);

	/* Update PBF register */
	FUNC0(p_hwfn, p_ptt, PBF_REG_NGE_PORT, dest_port);
}