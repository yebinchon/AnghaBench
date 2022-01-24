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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int dummy; } ;
struct bnxt {int /*<<< orphan*/  dev; struct pci_dev* pdev; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  PCI_EXT_CAP_ID_DSN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct bnxt *bp, u8 dsn[])
{
	struct pci_dev *pdev = bp->pdev;
	int pos = FUNC1(pdev, PCI_EXT_CAP_ID_DSN);
	u32 dw;

	if (!pos) {
		FUNC0(bp->dev, "Unable do read adapter's DSN");
		return -EOPNOTSUPP;
	}

	/* DSN (two dw) is at an offset of 4 from the cap pos */
	pos += 4;
	FUNC2(pdev, pos, &dw);
	FUNC3(dw, &dsn[0]);
	FUNC2(pdev, pos + 4, &dw);
	FUNC3(dw, &dsn[4]);
	return 0;
}