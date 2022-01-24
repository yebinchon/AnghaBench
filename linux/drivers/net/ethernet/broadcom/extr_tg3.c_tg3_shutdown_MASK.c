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
struct tg3 {int dummy; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ SYSTEM_POWER_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct tg3* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 struct net_device* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ system_state ; 
 int /*<<< orphan*/  FUNC7 (struct tg3*) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *pdev)
{
	struct net_device *dev = FUNC4(pdev);
	struct tg3 *tp = FUNC1(dev);

	FUNC5();
	FUNC2(dev);

	if (FUNC3(dev))
		FUNC0(dev);

	if (system_state == SYSTEM_POWER_OFF)
		FUNC7(tp);

	FUNC6();
}