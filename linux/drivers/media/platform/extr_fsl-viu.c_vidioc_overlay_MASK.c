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
struct viu_fh {scalar_t__ dev; } ;
struct viu_dev {int ovenable; int /*<<< orphan*/  slock; int /*<<< orphan*/  vr; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct viu_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct viu_dev*) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *priv, unsigned int on)
{
	struct viu_fh  *fh  = priv;
	struct viu_dev *dev = (struct viu_dev *)fh->dev;
	unsigned long  flags;

	if (on) {
		FUNC0(&dev->slock, flags);
		FUNC2(dev->vr);
		dev->ovenable = 1;

		/* start dma */
		FUNC3(dev);
		FUNC1(&dev->slock, flags);
	} else {
		FUNC4(dev);
		dev->ovenable = 0;
	}

	return 0;
}