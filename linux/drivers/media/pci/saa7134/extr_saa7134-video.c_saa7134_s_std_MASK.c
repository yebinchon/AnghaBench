#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int v4l2_std_id ;
struct v4l2_fh {int dummy; } ;
struct saa7134_dev {int /*<<< orphan*/  slock; struct v4l2_fh* overlay_owner; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int id; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 unsigned int TVNORMS ; 
 int V4L2_STD_SECAM ; 
 int V4L2_STD_SECAM_DK ; 
 int V4L2_STD_SECAM_L ; 
 int V4L2_STD_SECAM_LC ; 
 scalar_t__ FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (struct saa7134_dev*) ; 
 char* secam ; 
 int /*<<< orphan*/  FUNC2 (struct saa7134_dev*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct saa7134_dev*) ; 
 TYPE_1__* tvnorms ; 
 struct saa7134_dev* FUNC7 (struct file*) ; 

int FUNC8(struct file *file, void *priv, v4l2_std_id id)
{
	struct saa7134_dev *dev = FUNC7(file);
	struct v4l2_fh *fh = priv;
	unsigned long flags;
	unsigned int i;
	v4l2_std_id fixup;

	if (FUNC0(file) && dev->overlay_owner) {
		/* Don't change the std from the mpeg device
		   if overlay is active. */
		return -EBUSY;
	}

	for (i = 0; i < TVNORMS; i++)
		if (id == tvnorms[i].id)
			break;

	if (i == TVNORMS)
		for (i = 0; i < TVNORMS; i++)
			if (id & tvnorms[i].id)
				break;
	if (i == TVNORMS)
		return -EINVAL;

	if ((id & V4L2_STD_SECAM) && (secam[0] != '-')) {
		if (secam[0] == 'L' || secam[0] == 'l') {
			if (secam[1] == 'C' || secam[1] == 'c')
				fixup = V4L2_STD_SECAM_LC;
			else
				fixup = V4L2_STD_SECAM_L;
		} else {
			if (secam[0] == 'D' || secam[0] == 'd')
				fixup = V4L2_STD_SECAM_DK;
			else
				fixup = V4L2_STD_SECAM;
		}
		for (i = 0; i < TVNORMS; i++) {
			if (fixup == tvnorms[i].id)
				break;
		}
		if (i == TVNORMS)
			return -EINVAL;
	}

	id = tvnorms[i].id;

	if (!FUNC0(file) && fh == dev->overlay_owner) {
		FUNC3(&dev->slock, flags);
		FUNC6(dev);
		FUNC4(&dev->slock, flags);

		FUNC2(dev, &tvnorms[i]);

		FUNC3(&dev->slock, flags);
		FUNC5(dev);
		FUNC4(&dev->slock, flags);
	} else
		FUNC2(dev, &tvnorms[i]);

	FUNC1(dev);
	return 0;
}