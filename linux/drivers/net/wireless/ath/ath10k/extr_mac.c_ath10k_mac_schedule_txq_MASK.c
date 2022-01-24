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
struct ieee80211_txq {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,struct ieee80211_txq*) ; 
 scalar_t__ FUNC1 (struct ieee80211_hw*,struct ieee80211_txq*) ; 
 int FUNC2 (struct ieee80211_hw*,struct ieee80211_txq*) ; 
 struct ieee80211_txq* FUNC3 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,struct ieee80211_txq*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ieee80211_hw *hw, u32 ac)
{
	struct ieee80211_txq *txq;
	int ret = 0;

	FUNC6(hw, ac);
	while ((txq = FUNC3(hw, ac))) {
		while (FUNC1(hw, txq)) {
			ret = FUNC2(hw, txq);
			if (ret < 0)
				break;
		}
		FUNC4(hw, txq, false);
		FUNC0(hw, txq);
		if (ret == -EBUSY)
			break;
	}
	FUNC5(hw, ac);

	return ret;
}