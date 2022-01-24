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
struct wcn36xx {int /*<<< orphan*/  hal_ind_lock; int /*<<< orphan*/  hal_ind_queue; int /*<<< orphan*/  hal_ind_work; int /*<<< orphan*/  hal_ind_wq; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wcn36xx_ind_smd_work ; 

int FUNC4(struct wcn36xx *wcn)
{
	wcn->hal_ind_wq = FUNC2("wcn36xx_smd_ind");
	if (!wcn->hal_ind_wq)
		return -ENOMEM;

	FUNC1(&wcn->hal_ind_work, wcn36xx_ind_smd_work);
	FUNC0(&wcn->hal_ind_queue);
	FUNC3(&wcn->hal_ind_lock);

	return 0;
}