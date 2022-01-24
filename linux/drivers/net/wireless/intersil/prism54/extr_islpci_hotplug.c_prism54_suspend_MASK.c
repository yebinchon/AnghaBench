#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  pm_message_t ;
struct TYPE_4__ {int /*<<< orphan*/  device_base; } ;
typedef  TYPE_1__ islpci_private ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PRV_STATE_OFF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 struct net_device* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 

__attribute__((used)) static int
FUNC8(struct pci_dev *pdev, pm_message_t state)
{
	struct net_device *ndev = FUNC6(pdev);
	islpci_private *priv = ndev ? FUNC3(ndev) : NULL;
	FUNC0(!priv);


	FUNC7(pdev);

	/* tell the device not to trigger interrupts for now... */
	FUNC1(priv->device_base);

	/* from now on assume the hardware was already powered down
	   and don't touch it anymore */
	FUNC2(priv, PRV_STATE_OFF);

	FUNC5(ndev);
	FUNC4(ndev);

	return 0;
}