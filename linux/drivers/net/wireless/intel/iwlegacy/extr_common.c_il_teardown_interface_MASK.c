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
struct il_priv {struct ieee80211_vif* scan_vif; int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct il_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct il_priv *il, struct ieee80211_vif *vif)
{
	FUNC3(&il->mutex);

	if (il->scan_vif == vif) {
		FUNC1(il, 200);
		FUNC0(il);
	}

	FUNC2(il);
}