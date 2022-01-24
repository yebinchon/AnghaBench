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
struct cx23885_dev {int /*<<< orphan*/  pci; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,unsigned long long) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct cx23885_dev *dev)
{
	if (FUNC3(FUNC1(dev->pci, 0),
			       FUNC0(dev->pci, 0),
			       dev->name))
		return 0;

	FUNC2("%s: can't get MMIO memory @ 0x%llx\n",
	       dev->name, (unsigned long long)FUNC1(dev->pci, 0));

	return -EBUSY;
}