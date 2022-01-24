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
struct bnx2x_sriov {int pos; int /*<<< orphan*/  link; int /*<<< orphan*/  cap; int /*<<< orphan*/  pgsz; int /*<<< orphan*/  stride; int /*<<< orphan*/  offset; int /*<<< orphan*/  initial; int /*<<< orphan*/  total; int /*<<< orphan*/  ctrl; } ;
struct bnx2x {struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BNX2X_MSG_IOV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int ENODEV ; 
 int /*<<< orphan*/  PCI_EXT_CAP_ID_SRIOV ; 
 scalar_t__ PCI_SRIOV_CAP ; 
 scalar_t__ PCI_SRIOV_CTRL ; 
 scalar_t__ PCI_SRIOV_FUNC_LINK ; 
 scalar_t__ PCI_SRIOV_INITIAL_VF ; 
 scalar_t__ PCI_SRIOV_SUP_PGSIZE ; 
 scalar_t__ PCI_SRIOV_TOTAL_VF ; 
 scalar_t__ PCI_SRIOV_VF_OFFSET ; 
 scalar_t__ PCI_SRIOV_VF_STRIDE ; 
 int FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct bnx2x *bp, struct bnx2x_sriov *iov)
{
	int pos;
	struct pci_dev *dev = bp->pdev;

	pos = FUNC2(dev, PCI_EXT_CAP_ID_SRIOV);
	if (!pos) {
		FUNC0("failed to find SRIOV capability in device\n");
		return -ENODEV;
	}

	iov->pos = pos;
	FUNC1(BNX2X_MSG_IOV, "sriov ext pos %d\n", pos);
	FUNC5(dev, pos + PCI_SRIOV_CTRL, &iov->ctrl);
	FUNC5(dev, pos + PCI_SRIOV_TOTAL_VF, &iov->total);
	FUNC5(dev, pos + PCI_SRIOV_INITIAL_VF, &iov->initial);
	FUNC5(dev, pos + PCI_SRIOV_VF_OFFSET, &iov->offset);
	FUNC5(dev, pos + PCI_SRIOV_VF_STRIDE, &iov->stride);
	FUNC4(dev, pos + PCI_SRIOV_SUP_PGSIZE, &iov->pgsz);
	FUNC4(dev, pos + PCI_SRIOV_CAP, &iov->cap);
	FUNC3(dev, pos + PCI_SRIOV_FUNC_LINK, &iov->link);

	return 0;
}