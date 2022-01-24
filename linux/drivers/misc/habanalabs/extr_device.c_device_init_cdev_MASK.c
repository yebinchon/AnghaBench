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
struct hl_device {int /*<<< orphan*/  major; } ;
struct file_operations {int dummy; } ;
struct device {int /*<<< orphan*/  release; struct class* class; int /*<<< orphan*/  devt; } ;
struct class {int dummy; } ;
struct cdev {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC1 (struct cdev*,struct file_operations const*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct hl_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  device_release_func ; 
 struct device* FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct hl_device *hdev, struct class *hclass,
				int minor, const struct file_operations *fops,
				char *name, struct cdev *cdev,
				struct device **dev)
{
	FUNC1(cdev, fops);
	cdev->owner = THIS_MODULE;

	*dev = FUNC5(sizeof(**dev), GFP_KERNEL);
	if (!*dev)
		return -ENOMEM;

	FUNC4(*dev);
	(*dev)->devt = FUNC0(hdev->major, minor);
	(*dev)->class = hclass;
	(*dev)->release = device_release_func;
	FUNC2(*dev, hdev);
	FUNC3(*dev, "%s", name);

	return 0;
}