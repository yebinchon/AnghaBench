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
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ipg_timer; } ;
struct amd8111e_priv {int options; int /*<<< orphan*/  lock; TYPE_1__ ipg_data; } ;

/* Variables and functions */
 scalar_t__ IPG_CONVERGE_JIFFIES ; 
 int OPTION_DYN_IPG_ENABLE ; 
 int /*<<< orphan*/  PCI_D0 ; 
 int /*<<< orphan*/  PCI_D3cold ; 
 int /*<<< orphan*/  PCI_D3hot ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct amd8111e_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct pci_dev *pci_dev)
{
	struct net_device *dev = FUNC6(pci_dev);
	struct amd8111e_priv *lp = FUNC2(dev);

	if (!FUNC4(dev))
		return 0;

	FUNC8(pci_dev, PCI_D0);
	FUNC7(pci_dev);

	FUNC5(pci_dev, PCI_D3hot, 0);
	FUNC5(pci_dev, PCI_D3cold, 0); /* D3 cold */

	FUNC3(dev);

	FUNC9(&lp->lock);
	FUNC0(dev);
	/* Restart ipg timer */
	if(lp->options & OPTION_DYN_IPG_ENABLE)
		FUNC1(&lp->ipg_data.ipg_timer,
				jiffies + IPG_CONVERGE_JIFFIES);
	FUNC10(&lp->lock);

	return 0;
}