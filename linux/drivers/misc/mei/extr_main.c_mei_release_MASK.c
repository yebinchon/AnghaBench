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
struct mei_device {int /*<<< orphan*/  device_lock; } ;
struct mei_cl {struct mei_device* dev; } ;
struct inode {int dummy; } ;
struct file {struct mei_cl* private_data; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mei_device*,struct mei_cl*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mei_cl*) ; 
 int FUNC3 (struct mei_cl*) ; 
 int /*<<< orphan*/  FUNC4 (struct mei_cl*,struct file*) ; 
 int /*<<< orphan*/  FUNC5 (struct mei_cl*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct file *file)
{
	struct mei_cl *cl = file->private_data;
	struct mei_device *dev;
	int rets;

	if (FUNC0(!cl || !cl->dev))
		return -ENODEV;

	dev = cl->dev;

	FUNC6(&dev->device_lock);

	rets = FUNC3(cl);

	FUNC4(cl, file);
	FUNC1(dev, cl, "removing\n");

	FUNC5(cl);

	file->private_data = NULL;

	FUNC2(cl);

	FUNC7(&dev->device_lock);
	return rets;
}