#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rocker_port {TYPE_1__* dev; struct rocker* rocker; } ;
struct rocker {struct pci_dev* pdev; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (struct rocker_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct rocker_port *rocker_port)
{
	const struct rocker *rocker = rocker_port->rocker;
	const struct pci_dev *pdev = rocker->pdev;
	int err;

	err = FUNC2(rocker_port,
						   rocker_port->dev->dev_addr);
	if (err) {
		FUNC0(&pdev->dev, "failed to get mac address, using random\n");
		FUNC1(rocker_port->dev);
	}
}