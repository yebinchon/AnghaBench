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
struct ath6kl {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_STATE_OFF ; 
 int FUNC0 (struct ath6kl*) ; 

int FUNC1(struct ath6kl *ar)
{
	int err;

	err = FUNC0(ar);
	if (err)
		return err;
	ar->state = ATH6KL_STATE_OFF;
	return 0;
}