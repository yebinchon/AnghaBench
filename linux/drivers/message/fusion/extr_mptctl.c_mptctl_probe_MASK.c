#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  done; int /*<<< orphan*/  mutex; } ;
struct TYPE_5__ {TYPE_1__ ioctl_cmds; } ;
typedef  TYPE_2__ MPT_ADAPTER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (struct pci_dev*) ; 

__attribute__((used)) static int
FUNC3(struct pci_dev *pdev, const struct pci_device_id *id)
{
	MPT_ADAPTER *ioc = FUNC2(pdev);

	FUNC1(&ioc->ioctl_cmds.mutex);
	FUNC0(&ioc->ioctl_cmds.done);
	return 0;
}