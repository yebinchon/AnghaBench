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
typedef  int u32 ;
struct hnae3_ae_dev {scalar_t__ hw_err_reset_req; struct hclge_dev* priv; } ;
struct hclge_dev {int /*<<< orphan*/  state; TYPE_1__* pdev; int /*<<< orphan*/  hw; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;
struct TYPE_2__ {int revision; struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_RAS_PF_OTHER_INT_STS_REG ; 
 int HCLGE_RAS_REG_NFE_MASK ; 
 int HCLGE_RAS_REG_ROCEE_ERR_MASK ; 
 int /*<<< orphan*/  HCLGE_STATE_RST_HANDLING ; 
 int /*<<< orphan*/  HCLGE_STATE_SERVICE_INITED ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_NEED_RESET ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_NONE ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct hclge_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct hnae3_ae_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

pci_ers_result_t FUNC5(struct hnae3_ae_dev *ae_dev)
{
	struct hclge_dev *hdev = ae_dev->priv;
	struct device *dev = &hdev->pdev->dev;
	u32 status;

	if (!FUNC4(HCLGE_STATE_SERVICE_INITED, &hdev->state)) {
		FUNC0(dev,
			"Can't recover - RAS error reported during dev init\n");
		return PCI_ERS_RESULT_NONE;
	}

	status = FUNC3(&hdev->hw, HCLGE_RAS_PF_OTHER_INT_STS_REG);

	if (status & HCLGE_RAS_REG_NFE_MASK ||
	    status & HCLGE_RAS_REG_ROCEE_ERR_MASK)
		ae_dev->hw_err_reset_req = 0;
	else
		goto out;

	/* Handling Non-fatal HNS RAS errors */
	if (status & HCLGE_RAS_REG_NFE_MASK) {
		FUNC0(dev,
			"HNS Non-Fatal RAS error(status=0x%x) identified\n",
			status);
		FUNC1(hdev);
	}

	/* Handling Non-fatal Rocee RAS errors */
	if (hdev->pdev->revision >= 0x21 &&
	    status & HCLGE_RAS_REG_ROCEE_ERR_MASK) {
		FUNC0(dev, "ROCEE Non-Fatal RAS error identified\n");
		FUNC2(ae_dev);
	}

	if (FUNC4(HCLGE_STATE_RST_HANDLING, &hdev->state))
		goto out;

	if (ae_dev->hw_err_reset_req)
		return PCI_ERS_RESULT_NEED_RESET;

out:
	return PCI_ERS_RESULT_RECOVERED;
}