#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct filter_ctx {int result; int /*<<< orphan*/  completion; } ;
struct ch_filter_specification {int dummy; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int CXGB4_SHUTTING_DOWN ; 
 int ETIMEDOUT ; 
 int HZ ; 
 int FUNC0 (struct net_device*,int,struct ch_filter_specification*,struct filter_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (struct net_device*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 

int FUNC4(struct net_device *dev, int filter_id,
		     struct ch_filter_specification *fs)
{
	struct filter_ctx ctx;
	int ret;

	if (FUNC2(dev)->flags & CXGB4_SHUTTING_DOWN)
		return 0;

	FUNC1(&ctx.completion);

	ret = FUNC0(dev, filter_id, fs, &ctx);
	if (ret)
		goto out;

	/* Wait for reply */
	ret = FUNC3(&ctx.completion, 10 * HZ);
	if (!ret)
		return -ETIMEDOUT;

	ret = ctx.result;
out:
	return ret;
}