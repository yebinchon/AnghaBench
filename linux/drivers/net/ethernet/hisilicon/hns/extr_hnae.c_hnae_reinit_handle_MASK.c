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
struct hnae_handle {int q_num; int /*<<< orphan*/ * qs; TYPE_2__* dev; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* reset ) (struct hnae_handle*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hnae_handle*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct hnae_handle*) ; 

int FUNC3(struct hnae_handle *handle)
{
	int i, j;
	int ret;

	for (i = 0; i < handle->q_num; i++) /* free ring*/
		FUNC0(handle->qs[i]);

	if (handle->dev->ops->reset)
		handle->dev->ops->reset(handle);

	for (i = 0; i < handle->q_num; i++) {/* reinit ring*/
		ret = FUNC1(handle, handle->qs[i], handle->dev);
		if (ret)
			goto out_when_init_queue;
	}
	return 0;
out_when_init_queue:
	for (j = i - 1; j >= 0; j--)
		FUNC0(handle->qs[j]);
	return ret;
}