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
typedef  int u32 ;
struct TYPE_2__ {int pixelformat; } ;
struct rvin_dev {unsigned int alpha; scalar_t__ state; int /*<<< orphan*/  qlock; TYPE_1__ format; } ;

/* Variables and functions */
 scalar_t__ STOPPED ; 
#define  V4L2_PIX_FMT_ABGR32 129 
#define  V4L2_PIX_FMT_ARGB555 128 
 int FUNC0 (int) ; 
 int VNDMR_A8BIT_MASK ; 
 int VNDMR_ABIT ; 
 int /*<<< orphan*/  VNDMR_REG ; 
 int FUNC1 (struct rvin_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rvin_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct rvin_dev *vin, unsigned int alpha)
{
	unsigned long flags;
	u32 dmr;

	FUNC3(&vin->qlock, flags);

	vin->alpha = alpha;

	if (vin->state == STOPPED)
		goto out;

	switch (vin->format.pixelformat) {
	case V4L2_PIX_FMT_ARGB555:
		dmr = FUNC1(vin, VNDMR_REG) & ~VNDMR_ABIT;
		if (vin->alpha)
			dmr |= VNDMR_ABIT;
		break;
	case V4L2_PIX_FMT_ABGR32:
		dmr = FUNC1(vin, VNDMR_REG) & ~VNDMR_A8BIT_MASK;
		dmr |= FUNC0(vin->alpha);
		break;
	default:
		goto out;
	}

	FUNC2(vin, dmr,  VNDMR_REG);
out:
	FUNC4(&vin->qlock, flags);
}