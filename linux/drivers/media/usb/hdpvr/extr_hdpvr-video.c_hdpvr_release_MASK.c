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
struct hdpvr_device {scalar_t__ owner; int /*<<< orphan*/  io_mutex; } ;
struct file {scalar_t__ private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hdpvr_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct file*) ; 
 struct hdpvr_device* FUNC4 (struct file*) ; 

__attribute__((used)) static int FUNC5(struct file *file)
{
	struct hdpvr_device *dev = FUNC4(file);

	FUNC1(&dev->io_mutex);
	if (file->private_data == dev->owner) {
		FUNC0(dev);
		dev->owner = NULL;
	}
	FUNC2(&dev->io_mutex);

	return FUNC3(file);
}