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
struct vb2_queue {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sizeimage; } ;
struct rvin_dev {int /*<<< orphan*/  scratch_phys; int /*<<< orphan*/  scratch; TYPE_1__ format; int /*<<< orphan*/  dev; int /*<<< orphan*/  qlock; scalar_t__ sequence; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  VB2_BUF_STATE_QUEUED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rvin_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct rvin_dev*) ; 
 int FUNC4 (struct rvin_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct rvin_dev* FUNC7 (struct vb2_queue*) ; 
 int /*<<< orphan*/  FUNC8 (struct rvin_dev*,char*) ; 

__attribute__((used)) static int FUNC9(struct vb2_queue *vq, unsigned int count)
{
	struct rvin_dev *vin = FUNC7(vq);
	unsigned long flags;
	int ret;

	/* Allocate scratch buffer. */
	vin->scratch = FUNC0(vin->dev, vin->format.sizeimage,
					  &vin->scratch_phys, GFP_KERNEL);
	if (!vin->scratch) {
		FUNC5(&vin->qlock, flags);
		FUNC2(vin, VB2_BUF_STATE_QUEUED);
		FUNC6(&vin->qlock, flags);
		FUNC8(vin, "Failed to allocate scratch buffer\n");
		return -ENOMEM;
	}

	ret = FUNC4(vin, 1);
	if (ret) {
		FUNC5(&vin->qlock, flags);
		FUNC2(vin, VB2_BUF_STATE_QUEUED);
		FUNC6(&vin->qlock, flags);
		goto out;
	}

	FUNC5(&vin->qlock, flags);

	vin->sequence = 0;

	ret = FUNC3(vin);
	if (ret) {
		FUNC2(vin, VB2_BUF_STATE_QUEUED);
		FUNC4(vin, 0);
	}

	FUNC6(&vin->qlock, flags);
out:
	if (ret)
		FUNC1(vin->dev, vin->format.sizeimage, vin->scratch,
				  vin->scratch_phys);

	return ret;
}