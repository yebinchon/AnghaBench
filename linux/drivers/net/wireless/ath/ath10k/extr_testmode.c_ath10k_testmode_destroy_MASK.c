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
struct ath10k {scalar_t__ state; int /*<<< orphan*/  conf_mutex; } ;

/* Variables and functions */
 scalar_t__ ATH10K_STATE_UTF ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct ath10k *ar)
{
	FUNC1(&ar->conf_mutex);

	if (ar->state != ATH10K_STATE_UTF) {
		/* utf firmware is not running, nothing to do */
		goto out;
	}

	FUNC0(ar);

out:
	FUNC2(&ar->conf_mutex);
}