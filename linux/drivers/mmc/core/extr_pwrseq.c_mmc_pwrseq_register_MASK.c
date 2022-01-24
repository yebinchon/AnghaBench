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
struct mmc_pwrseq {int /*<<< orphan*/  pwrseq_node; int /*<<< orphan*/  dev; int /*<<< orphan*/  ops; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pwrseq_list ; 
 int /*<<< orphan*/  pwrseq_list_mutex ; 

int FUNC3(struct mmc_pwrseq *pwrseq)
{
	if (!pwrseq || !pwrseq->ops || !pwrseq->dev)
		return -EINVAL;

	FUNC1(&pwrseq_list_mutex);
	FUNC0(&pwrseq->pwrseq_node, &pwrseq_list);
	FUNC2(&pwrseq_list_mutex);

	return 0;
}