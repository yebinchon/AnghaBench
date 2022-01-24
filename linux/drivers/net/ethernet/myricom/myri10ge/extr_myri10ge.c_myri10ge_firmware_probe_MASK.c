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
struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;
struct myri10ge_priv {int tx_boundary; struct pci_dev* pdev; } ;

/* Variables and functions */
 int E2BIG ; 
 int ENOSYS ; 
 int /*<<< orphan*/  MXGEFW_CMD_UNALIGNED_TEST ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int FUNC2 (struct myri10ge_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct myri10ge_priv*) ; 
 int /*<<< orphan*/  myri10ge_fw_aligned ; 
 int /*<<< orphan*/  myri10ge_fw_unaligned ; 
 int FUNC4 (struct myri10ge_priv*,int) ; 
 int FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct myri10ge_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct myri10ge_priv *mgp)
{
	struct pci_dev *pdev = mgp->pdev;
	struct device *dev = &pdev->dev;
	int status;

	mgp->tx_boundary = 4096;
	/*
	 * Verify the max read request size was set to 4KB
	 * before trying the test with 4KB.
	 */
	status = FUNC5(pdev);
	if (status < 0) {
		FUNC0(dev, "Couldn't read max read req size: %d\n", status);
		goto abort;
	}
	if (status != 4096) {
		FUNC1(dev, "Max Read Request size != 4096 (%d)\n", status);
		mgp->tx_boundary = 2048;
	}
	/*
	 * load the optimized firmware (which assumes aligned PCIe
	 * completions) in order to see if it works on this host.
	 */
	FUNC6(mgp, myri10ge_fw_aligned, false);
	status = FUNC4(mgp, 1);
	if (status != 0) {
		goto abort;
	}

	/*
	 * Enable ECRC if possible
	 */
	FUNC3(mgp);

	/*
	 * Run a DMA test which watches for unaligned completions and
	 * aborts on the first one seen.
	 */

	status = FUNC2(mgp, MXGEFW_CMD_UNALIGNED_TEST);
	if (status == 0)
		return;		/* keep the aligned firmware */

	if (status != -E2BIG)
		FUNC1(dev, "DMA test failed: %d\n", status);
	if (status == -ENOSYS)
		FUNC1(dev, "Falling back to ethp! "
			 "Please install up to date fw\n");
abort:
	/* fall back to using the unaligned firmware */
	mgp->tx_boundary = 2048;
	FUNC6(mgp, myri10ge_fw_unaligned, false);
}