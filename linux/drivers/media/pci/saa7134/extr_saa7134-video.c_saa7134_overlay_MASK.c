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
struct saa7134_dev {void* overlay_owner; int /*<<< orphan*/  slock; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ saa7134_no_overlay ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct saa7134_dev* FUNC5 (struct file*) ; 

__attribute__((used)) static int FUNC6(struct file *file, void *priv, unsigned int on)
{
	struct saa7134_dev *dev = FUNC5(file);
	unsigned long flags;

	if (on) {
		if (saa7134_no_overlay > 0) {
			FUNC4("no_overlay\n");
			return -EINVAL;
		}

		if (dev->overlay_owner && priv != dev->overlay_owner)
			return -EBUSY;
		dev->overlay_owner = priv;
		FUNC0(&dev->slock, flags);
		FUNC2(dev);
		FUNC1(&dev->slock, flags);
	}
	if (!on) {
		if (priv != dev->overlay_owner)
			return -EINVAL;
		FUNC0(&dev->slock, flags);
		FUNC3(dev);
		FUNC1(&dev->slock, flags);
		dev->overlay_owner = NULL;
	}
	return 0;
}