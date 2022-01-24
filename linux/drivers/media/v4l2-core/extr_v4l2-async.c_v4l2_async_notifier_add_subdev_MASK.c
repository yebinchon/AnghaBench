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
struct v4l2_async_subdev {int /*<<< orphan*/  asd_list; } ;
struct v4l2_async_notifier {int /*<<< orphan*/  asd_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  list_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct v4l2_async_notifier*,struct v4l2_async_subdev*,int) ; 

int FUNC4(struct v4l2_async_notifier *notifier,
				   struct v4l2_async_subdev *asd)
{
	int ret;

	FUNC1(&list_lock);

	ret = FUNC3(notifier, asd, -1);
	if (ret)
		goto unlock;

	FUNC0(&asd->asd_list, &notifier->asd_list);

unlock:
	FUNC2(&list_lock);
	return ret;
}