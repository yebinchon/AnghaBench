#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ath_dynack {int ackto; int /*<<< orphan*/  nodes; int /*<<< orphan*/  qlock; } ;
struct ath_hw {TYPE_1__* hw; struct ath_dynack dynack; } ;
struct TYPE_4__ {int /*<<< orphan*/  features; } ;
struct TYPE_3__ {TYPE_2__* wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NL80211_FEATURE_ACKTO_ESTIMATION ; 
 int /*<<< orphan*/  FUNC1 (struct ath_dynack*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct ath_hw *ah)
{
	struct ath_dynack *da = &ah->dynack;

	FUNC1(da, 0, sizeof(struct ath_dynack));

	FUNC2(&da->qlock);
	FUNC0(&da->nodes);
	/* ackto = slottime + sifs + air delay */
	da->ackto = 9 + 16 + 64;

	ah->hw->wiphy->features |= NL80211_FEATURE_ACKTO_ESTIMATION;
}