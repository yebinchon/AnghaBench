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
struct phantom_device {int status; int /*<<< orphan*/  open_lock; scalar_t__ opened; } ;
struct inode {int dummy; } ;
struct file {struct phantom_device* private_data; } ;

/* Variables and functions */
 int PHB_NOT_OH ; 
 int PHB_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct phantom_device*,int) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *file)
{
	struct phantom_device *dev = file->private_data;

	FUNC0(&dev->open_lock);

	dev->opened = 0;
	FUNC2(dev, dev->status & ~PHB_RUNNING);
	dev->status &= ~PHB_NOT_OH;

	FUNC1(&dev->open_lock);

	return 0;
}