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
struct ath6kl_vif {int /*<<< orphan*/  flags; } ;
struct ath6kl {int /*<<< orphan*/  sem; int /*<<< orphan*/  event_wq; int /*<<< orphan*/  wmi; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  STATS_UPDATE_PEND ; 
 int /*<<< orphan*/  WMI_TIMEOUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 long FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC6(struct ath6kl *ar, struct ath6kl_vif *vif)
{
	long left;

	if (FUNC1(&ar->sem))
		return -EBUSY;

	FUNC2(STATS_UPDATE_PEND, &vif->flags);

	if (FUNC0(ar->wmi, 0)) {
		FUNC4(&ar->sem);
		return -EIO;
	}

	left = FUNC5(ar->event_wq,
						!FUNC3(STATS_UPDATE_PEND,
						&vif->flags), WMI_TIMEOUT);

	FUNC4(&ar->sem);

	if (left <= 0)
		return -ETIMEDOUT;

	return 0;
}