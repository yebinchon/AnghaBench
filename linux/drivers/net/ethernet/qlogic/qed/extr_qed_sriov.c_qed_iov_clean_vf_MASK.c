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
struct qed_public_vf_info {scalar_t__ tx_accept_mode; scalar_t__ rx_accept_mode; int /*<<< orphan*/  mac; } ;
struct qed_hwfn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct qed_public_vf_info* FUNC1 (struct qed_hwfn*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct qed_hwfn *p_hwfn, u8 vfid)
{
	struct qed_public_vf_info *vf_info;

	vf_info = FUNC1(p_hwfn, vfid, false);

	if (!vf_info)
		return;

	/* Clear the VF mac */
	FUNC0(vf_info->mac);

	vf_info->rx_accept_mode = 0;
	vf_info->tx_accept_mode = 0;
}