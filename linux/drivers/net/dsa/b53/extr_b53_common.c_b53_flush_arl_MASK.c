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
typedef  int u8 ;
struct b53_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B53_CTRL_PAGE ; 
 int /*<<< orphan*/  B53_FAST_AGE_CTRL ; 
 int ETIMEDOUT ; 
 int FAST_AGE_DONE ; 
 int FAST_AGE_DYNAMIC ; 
 int /*<<< orphan*/  FUNC0 (struct b53_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct b53_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct b53_device *dev, u8 mask)
{
	unsigned int i;

	FUNC1(dev, B53_CTRL_PAGE, B53_FAST_AGE_CTRL,
		   FAST_AGE_DONE | FAST_AGE_DYNAMIC | mask);

	for (i = 0; i < 10; i++) {
		u8 fast_age_ctrl;

		FUNC0(dev, B53_CTRL_PAGE, B53_FAST_AGE_CTRL,
			  &fast_age_ctrl);

		if (!(fast_age_ctrl & FAST_AGE_DONE))
			goto out;

		FUNC2(1);
	}

	return -ETIMEDOUT;
out:
	/* Only age dynamic entries (default behavior) */
	FUNC1(dev, B53_CTRL_PAGE, B53_FAST_AGE_CTRL, FAST_AGE_DYNAMIC);
	return 0;
}