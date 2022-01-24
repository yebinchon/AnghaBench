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
typedef  int /*<<< orphan*/  u32 ;
struct ieee80211_hw {struct ar5523* priv; } ;
struct ar5523 {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFG_USER_RTS_THRESHOLD ; 
 int FUNC0 (struct ar5523*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ar5523*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct ieee80211_hw *hw, u32 value)
{
	struct ar5523 *ar = hw->priv;
	int ret;

	FUNC1(ar, "set_rts_threshold called\n");
	FUNC2(&ar->mutex);

	ret = FUNC0(ar, CFG_USER_RTS_THRESHOLD, value);

	FUNC3(&ar->mutex);
	return ret;
}