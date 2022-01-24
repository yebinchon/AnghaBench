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
struct s2io_nic {int /*<<< orphan*/  bar1; int /*<<< orphan*/  bar0; int /*<<< orphan*/  set_link_task; int /*<<< orphan*/  rst_timer_task; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ERR_DBG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct s2io_nic*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct s2io_nic* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 struct net_device* FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 

__attribute__((used)) static void FUNC10(struct pci_dev *pdev)
{
	struct net_device *dev = FUNC7(pdev);
	struct s2io_nic *sp;

	if (dev == NULL) {
		FUNC0(ERR_DBG, "Driver Data is NULL!!\n");
		return;
	}

	sp = FUNC5(dev);

	FUNC1(&sp->rst_timer_task);
	FUNC1(&sp->set_link_task);

	FUNC9(dev);

	FUNC3(sp);
	FUNC4(sp->bar0);
	FUNC4(sp->bar1);
	FUNC8(pdev);
	FUNC2(dev);
	FUNC6(pdev);
}