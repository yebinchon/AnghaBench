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
typedef  int u32 ;
struct v4l2_input {unsigned int index; int /*<<< orphan*/  status; int /*<<< orphan*/  std; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
struct file {int dummy; } ;
struct cx231xx_fh {struct cx231xx* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  tvnorms; } ;
struct cx231xx {unsigned int video_input; TYPE_1__ vdev; } ;
struct TYPE_4__ {size_t type; } ;

/* Variables and functions */
 size_t CX231XX_VMUX_CABLE ; 
 size_t CX231XX_VMUX_TELEVISION ; 
 int EINVAL ; 
 int FLD_HLOCK ; 
 int FLD_VPRES ; 
 int /*<<< orphan*/  GEN_STAT ; 
 TYPE_2__* FUNC0 (unsigned int) ; 
 unsigned int MAX_CX231XX_INPUT ; 
 int /*<<< orphan*/  V4L2_INPUT_TYPE_CAMERA ; 
 int /*<<< orphan*/  V4L2_INPUT_TYPE_TUNER ; 
 int /*<<< orphan*/  V4L2_IN_ST_NO_H_LOCK ; 
 int /*<<< orphan*/  V4L2_IN_ST_NO_SIGNAL ; 
 int /*<<< orphan*/  VID_BLK_I2C_ADDRESS ; 
 int FUNC1 (struct cx231xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int) ; 
 int /*<<< orphan*/ * iname ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct file *file, void *priv,
			     struct v4l2_input *i)
{
	struct cx231xx_fh *fh = priv;
	struct cx231xx *dev = fh->dev;
	u32 gen_stat;
	unsigned int n;
	int ret;

	n = i->index;
	if (n >= MAX_CX231XX_INPUT)
		return -EINVAL;
	if (0 == FUNC0(n)->type)
		return -EINVAL;

	i->index = n;
	i->type = V4L2_INPUT_TYPE_CAMERA;

	FUNC2(i->name, iname[FUNC0(n)->type], sizeof(i->name));

	if ((CX231XX_VMUX_TELEVISION == FUNC0(n)->type) ||
	    (CX231XX_VMUX_CABLE == FUNC0(n)->type))
		i->type = V4L2_INPUT_TYPE_TUNER;

	i->std = dev->vdev.tvnorms;

	/* If they are asking about the active input, read signal status */
	if (n == dev->video_input) {
		ret = FUNC1(dev, VID_BLK_I2C_ADDRESS,
					    GEN_STAT, 2, &gen_stat, 4);
		if (ret > 0) {
			if ((gen_stat & FLD_VPRES) == 0x00)
				i->status |= V4L2_IN_ST_NO_SIGNAL;
			if ((gen_stat & FLD_HLOCK) == 0x00)
				i->status |= V4L2_IN_ST_NO_H_LOCK;
		}
	}

	return 0;
}