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
typedef  int u32 ;
struct ieee80211_hw {struct ar5523* priv; } ;
struct ar5523 {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int IEEE80211_CONF_CHANGE_CHANNEL ; 
 int /*<<< orphan*/  FUNC0 (struct ar5523*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ar5523*) ; 
 int /*<<< orphan*/  FUNC2 (struct ar5523*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct ieee80211_hw *hw, u32 changed)
{
	struct ar5523 *ar = hw->priv;

	FUNC0(ar, "config called\n");
	FUNC3(&ar->mutex);
	if (changed & IEEE80211_CONF_CHANGE_CHANNEL) {
		FUNC0(ar, "Do channel switch\n");
		FUNC1(ar);
		FUNC2(ar);
	}
	FUNC4(&ar->mutex);
	return 0;
}