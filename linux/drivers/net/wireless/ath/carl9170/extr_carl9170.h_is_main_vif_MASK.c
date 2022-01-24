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
struct ieee80211_vif {int dummy; } ;
struct ar9170 {int dummy; } ;

/* Variables and functions */
 struct ieee80211_vif* FUNC0 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static inline bool FUNC3(struct ar9170 *ar, struct ieee80211_vif *vif)
{
	bool ret;

	FUNC1();
	ret = (FUNC0(ar) == vif);
	FUNC2();
	return ret;
}