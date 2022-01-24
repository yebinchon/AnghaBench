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
struct slic_upr_list {int pending; int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;
struct slic_upr {int /*<<< orphan*/  list; } ;
struct slic_device {struct slic_upr_list upr_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct slic_device*,struct slic_upr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct slic_device *sdev, struct slic_upr *upr)
{
	struct slic_upr_list *upr_list = &sdev->upr_list;
	bool pending;

	FUNC3(&upr_list->lock);
	pending = upr_list->pending;
	FUNC0(&upr->list);
	FUNC1(&upr->list, &upr_list->list);
	upr_list->pending = true;
	FUNC4(&upr_list->lock);

	if (!pending)
		FUNC2(sdev, upr);
}