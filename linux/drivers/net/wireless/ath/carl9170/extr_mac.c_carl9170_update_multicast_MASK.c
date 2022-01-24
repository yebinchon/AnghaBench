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
typedef  int u64 ;
struct ar9170 {int cur_mc_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR9170_MAC_REG_GROUP_HASH_TBL_H ; 
 int /*<<< orphan*/  AR9170_MAC_REG_GROUP_HASH_TBL_L ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC1 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 

int FUNC4(struct ar9170 *ar, const u64 mc_hash)
{
	int err;

	FUNC1(ar);
	FUNC0(AR9170_MAC_REG_GROUP_HASH_TBL_H, mc_hash >> 32);
	FUNC0(AR9170_MAC_REG_GROUP_HASH_TBL_L, mc_hash);
	FUNC2();
	err = FUNC3();
	if (err)
		return err;

	ar->cur_mc_hash = mc_hash;
	return 0;
}