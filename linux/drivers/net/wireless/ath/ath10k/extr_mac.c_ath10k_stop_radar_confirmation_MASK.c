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
struct ath10k {int /*<<< orphan*/  radar_confirmation_work; int /*<<< orphan*/  data_lock; int /*<<< orphan*/  radar_conf_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_RADAR_CONFIRMATION_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ath10k *ar)
{
	FUNC1(&ar->data_lock);
	ar->radar_conf_state = ATH10K_RADAR_CONFIRMATION_STOPPED;
	FUNC2(&ar->data_lock);

	FUNC0(&ar->radar_confirmation_work);
}