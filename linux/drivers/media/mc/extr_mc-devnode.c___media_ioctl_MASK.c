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
struct media_devnode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 long EIO ; 
 long ENOTTY ; 
 struct media_devnode* FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (struct media_devnode*) ; 

__attribute__((used)) static long
FUNC2(struct file *filp, unsigned int cmd, unsigned long arg,
	      long (*ioctl_func)(struct file *filp, unsigned int cmd,
				 unsigned long arg))
{
	struct media_devnode *devnode = FUNC0(filp);

	if (!ioctl_func)
		return -ENOTTY;

	if (!FUNC1(devnode))
		return -EIO;

	return ioctl_func(filp, cmd, arg);
}