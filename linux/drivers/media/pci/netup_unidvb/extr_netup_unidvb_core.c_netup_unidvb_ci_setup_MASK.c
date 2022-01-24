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
struct pci_dev {int dummy; } ;
struct netup_unidvb_dev {scalar_t__ bmmio0; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETUP_UNIDVB_IRQ_CI ; 
 scalar_t__ REG_IMASK_SET ; 
 int FUNC0 (struct netup_unidvb_dev*,int,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct netup_unidvb_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct netup_unidvb_dev *ndev,
				 struct pci_dev *pci_dev)
{
	int res;

	FUNC2(NETUP_UNIDVB_IRQ_CI, ndev->bmmio0 + REG_IMASK_SET);
	res = FUNC0(ndev, 0, pci_dev);
	if (res)
		return res;
	res = FUNC0(ndev, 1, pci_dev);
	if (res)
		FUNC1(ndev, 0);
	return res;
}