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
struct qed_public_vf_info {int /*<<< orphan*/  forced_mac; int /*<<< orphan*/  mac; scalar_t__ is_trusted_configured; } ;
struct qed_hwfn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct qed_hwfn *hwfn,
				       u8 *mac,
				       struct qed_public_vf_info *info)
{
	if (info->is_trusted_configured) {
		if (FUNC1(info->mac) &&
		    (!mac || !FUNC0(mac, info->mac)))
			return true;
	} else {
		if (FUNC1(info->forced_mac) &&
		    (!mac || !FUNC0(mac, info->forced_mac)))
			return true;
	}

	return false;
}