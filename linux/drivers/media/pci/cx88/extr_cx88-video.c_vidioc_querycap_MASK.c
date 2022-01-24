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
struct v4l2_capability {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  driver; } ;
struct file {int dummy; } ;
struct cx88_core {int dummy; } ;
struct cx8800_dev {int /*<<< orphan*/  pci; struct cx88_core* core; } ;

/* Variables and functions */
 int FUNC0 (struct file*,struct cx88_core*,struct v4l2_capability*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 struct cx8800_dev* FUNC4 (struct file*) ; 

__attribute__((used)) static int FUNC5(struct file *file, void  *priv,
			   struct v4l2_capability *cap)
{
	struct cx8800_dev *dev = FUNC4(file);
	struct cx88_core *core = dev->core;

	FUNC3(cap->driver, "cx8800", sizeof(cap->driver));
	FUNC2(cap->bus_info, "PCI:%s", FUNC1(dev->pci));
	return FUNC0(file, core, cap);
}