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
struct file {int dummy; } ;
struct cx231xx_fh {struct cx231xx* dev; } ;
struct cx231xx {int /*<<< orphan*/  norm; scalar_t__ mode_tv; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ CX231XX_VMUX_CABLE ; 
 scalar_t__ CX231XX_VMUX_TELEVISION ; 
 int EINVAL ; 
 TYPE_1__* FUNC0 (unsigned int) ; 
 unsigned int MAX_CX231XX_INPUT ; 
 int /*<<< orphan*/  FUNC1 (struct cx231xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cx231xx*) ; 
 int /*<<< orphan*/  s_std ; 
 int /*<<< orphan*/  video ; 
 int /*<<< orphan*/  FUNC3 (struct cx231xx*,unsigned int) ; 

int FUNC4(struct file *file, void *priv, unsigned int i)
{
	struct cx231xx_fh *fh = priv;
	struct cx231xx *dev = fh->dev;
	int rc;

	dev->mode_tv = 0;
	rc = FUNC2(dev);
	if (rc < 0)
		return rc;

	if (i >= MAX_CX231XX_INPUT)
		return -EINVAL;
	if (0 == FUNC0(i)->type)
		return -EINVAL;

	FUNC3(dev, i);

	if (FUNC0(i)->type == CX231XX_VMUX_TELEVISION ||
	    FUNC0(i)->type == CX231XX_VMUX_CABLE) {
		/* There's a tuner, so reset the standard and put it on the
		   last known frequency (since it was probably powered down
		   until now */
		FUNC1(dev, video, s_std, dev->norm);
	}

	return 0;
}