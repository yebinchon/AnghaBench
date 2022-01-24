#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct hnae3_ae_dev {scalar_t__ hw_err_reset_req; struct hclge_dev* priv; struct pci_dev* pdev; } ;
struct TYPE_3__ {scalar_t__ media_type; int /*<<< orphan*/  mdio_bus; scalar_t__ phydev; } ;
struct TYPE_4__ {int /*<<< orphan*/  io_base; TYPE_1__ mac; } ;
struct hclge_dev {TYPE_2__ hw; struct pci_dev* pdev; scalar_t__ last_reset_time; int /*<<< orphan*/  misc_vector; int /*<<< orphan*/  reset_timer; int /*<<< orphan*/  mbx_service_task; int /*<<< orphan*/  rst_service_task; int /*<<< orphan*/  service_task; int /*<<< orphan*/  mac_tnl_log; int /*<<< orphan*/  fd_rule_lock; int /*<<< orphan*/  vport_cfg_mutex; int /*<<< orphan*/  vport_lock; scalar_t__ mps; int /*<<< orphan*/  reset_level; int /*<<< orphan*/  reset_type; struct hnae3_ae_dev* ae_dev; } ;
typedef  enum hnae3_reset_type { ____Placeholder_hnae3_reset_type } hnae3_reset_type ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ ETH_FCS_LEN ; 
 scalar_t__ ETH_FRAME_LEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HCLGE_DRIVER_NAME ; 
 scalar_t__ HCLGE_RESET_INTERVAL ; 
 int /*<<< orphan*/  HCLGE_TSO_MSS_MAX ; 
 int /*<<< orphan*/  HCLGE_TSO_MSS_MIN ; 
 int /*<<< orphan*/  HNAE3_FUNC_RESET ; 
 scalar_t__ HNAE3_MEDIA_TYPE_COPPER ; 
 int /*<<< orphan*/  HNAE3_NONE_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int VLAN_HLEN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct hclge_dev* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct hclge_dev*) ; 
 int FUNC7 (struct hclge_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct hclge_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct hclge_dev*) ; 
 int FUNC10 (struct hclge_dev*) ; 
 int FUNC11 (struct hclge_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct hclge_dev*) ; 
 int FUNC13 (struct hclge_dev*,int) ; 
 int FUNC14 (struct hclge_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct hclge_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct hclge_dev*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 int FUNC18 (struct hclge_dev*) ; 
 int FUNC19 (struct hnae3_ae_dev*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC20 (struct hnae3_ae_dev*) ; 
 int FUNC21 (struct hclge_dev*) ; 
 int FUNC22 (struct hclge_dev*) ; 
 int FUNC23 (struct hclge_dev*) ; 
 int FUNC24 (struct hclge_dev*) ; 
 int FUNC25 (struct hclge_dev*) ; 
 int FUNC26 (struct hclge_dev*) ; 
 int /*<<< orphan*/  hclge_mailbox_service_task ; 
 int FUNC27 (struct hclge_dev*) ; 
 int /*<<< orphan*/  FUNC28 (struct hclge_dev*) ; 
 int FUNC29 (struct hclge_dev*) ; 
 int /*<<< orphan*/  FUNC30 (struct hclge_dev*) ; 
 int FUNC31 (struct hclge_dev*) ; 
 int /*<<< orphan*/  hclge_reset_service_task ; 
 int /*<<< orphan*/  hclge_reset_timer ; 
 int /*<<< orphan*/  FUNC32 (struct hclge_dev*) ; 
 int FUNC33 (struct hclge_dev*) ; 
 int /*<<< orphan*/  hclge_service_task ; 
 int /*<<< orphan*/  FUNC34 (struct hnae3_ae_dev*,int) ; 
 int /*<<< orphan*/  FUNC35 (struct hclge_dev*) ; 
 int FUNC36 (struct hclge_dev*) ; 
 int FUNC37 (struct hclge_dev*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC41 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC42 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC43 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC44 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC45 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC47 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC48(struct hnae3_ae_dev *ae_dev)
{
	struct pci_dev *pdev = ae_dev->pdev;
	struct hclge_dev *hdev;
	int ret;

	hdev = FUNC5(&pdev->dev, sizeof(*hdev), GFP_KERNEL);
	if (!hdev) {
		ret = -ENOMEM;
		goto out;
	}

	hdev->pdev = pdev;
	hdev->ae_dev = ae_dev;
	hdev->reset_type = HNAE3_NONE_RESET;
	hdev->reset_level = HNAE3_FUNC_RESET;
	ae_dev->priv = hdev;
	hdev->mps = ETH_FRAME_LEN + ETH_FCS_LEN + 2 * VLAN_HLEN;

	FUNC40(&hdev->vport_lock);
	FUNC40(&hdev->vport_cfg_mutex);
	FUNC46(&hdev->fd_rule_lock);

	ret = FUNC31(hdev);
	if (ret) {
		FUNC3(&pdev->dev, "PCI init failed\n");
		goto out;
	}

	/* Firmware command queue initialize */
	ret = FUNC11(hdev);
	if (ret) {
		FUNC3(&pdev->dev, "Cmd queue init failed, ret = %d.\n", ret);
		goto err_pci_uninit;
	}

	/* Firmware command initialize */
	ret = FUNC10(hdev);
	if (ret)
		goto err_cmd_uninit;

	ret = FUNC18(hdev);
	if (ret) {
		FUNC3(&pdev->dev, "get hw capability error, ret = %d.\n",
			ret);
		goto err_cmd_uninit;
	}

	ret = FUNC15(hdev);
	if (ret) {
		FUNC3(&pdev->dev, "Configure dev error, ret = %d.\n", ret);
		goto err_cmd_uninit;
	}

	ret = FUNC22(hdev);
	if (ret) {
		FUNC3(&pdev->dev, "Init MSI/MSI-X error, ret = %d.\n", ret);
		goto err_cmd_uninit;
	}

	ret = FUNC29(hdev);
	if (ret) {
		FUNC3(&pdev->dev,
			"Misc IRQ(vector0) init error, ret = %d.\n",
			ret);
		goto err_msi_uninit;
	}

	ret = FUNC6(hdev);
	if (ret) {
		FUNC3(&pdev->dev, "Allocate TQPs error, ret = %d.\n", ret);
		goto err_msi_irq_uninit;
	}

	ret = FUNC7(hdev);
	if (ret) {
		FUNC3(&pdev->dev, "Allocate vport error, ret = %d.\n", ret);
		goto err_msi_irq_uninit;
	}

	ret = FUNC27(hdev);
	if (ret) {
		FUNC3(&pdev->dev, "Map tqp error, ret = %d.\n", ret);
		goto err_msi_irq_uninit;
	}

	if (hdev->hw.mac.media_type == HNAE3_MEDIA_TYPE_COPPER) {
		ret = FUNC26(hdev);
		if (ret) {
			FUNC3(&hdev->pdev->dev,
				"mdio config fail ret=%d\n", ret);
			goto err_msi_irq_uninit;
		}
	}

	ret = FUNC23(hdev);
	if (ret) {
		FUNC3(&pdev->dev, "umv space init error, ret=%d.\n", ret);
		goto err_mdiobus_unreg;
	}

	ret = FUNC25(hdev);
	if (ret) {
		FUNC3(&pdev->dev, "Mac init error, ret = %d\n", ret);
		goto err_mdiobus_unreg;
	}

	ret = FUNC14(hdev, HCLGE_TSO_MSS_MIN, HCLGE_TSO_MSS_MAX);
	if (ret) {
		FUNC3(&pdev->dev, "Enable tso fail, ret =%d\n", ret);
		goto err_mdiobus_unreg;
	}

	ret = FUNC13(hdev, true);
	if (ret)
		goto err_mdiobus_unreg;

	ret = FUNC24(hdev);
	if (ret) {
		FUNC3(&pdev->dev, "VLAN init fail, ret =%d\n", ret);
		goto err_mdiobus_unreg;
	}

	ret = FUNC36(hdev);
	if (ret) {
		FUNC3(&pdev->dev, "tm schd init fail, ret =%d\n", ret);
		goto err_mdiobus_unreg;
	}

	FUNC32(hdev);
	ret = FUNC33(hdev);
	if (ret) {
		FUNC3(&pdev->dev, "Rss init fail, ret =%d\n", ret);
		goto err_mdiobus_unreg;
	}

	ret = FUNC37(hdev);
	if (ret) {
		FUNC3(&pdev->dev, "manager table init fail, ret =%d\n", ret);
		goto err_mdiobus_unreg;
	}

	ret = FUNC21(hdev);
	if (ret) {
		FUNC3(&pdev->dev,
			"fd table init fail, ret=%d\n", ret);
		goto err_mdiobus_unreg;
	}

	FUNC1(hdev->mac_tnl_log);

	FUNC16(hdev);

	FUNC47(&hdev->reset_timer, hclge_reset_timer, 0);
	FUNC0(&hdev->service_task, hclge_service_task);
	FUNC2(&hdev->rst_service_task, hclge_reset_service_task);
	FUNC2(&hdev->mbx_service_task, hclge_mailbox_service_task);

	/* Setup affinity after service timer setup because add_timer_on
	 * is called in affinity notify.
	 */
	FUNC28(hdev);

	FUNC8(hdev);
	FUNC9(hdev);

	/* Log and clear the hw errors those already occurred */
	FUNC20(ae_dev);

	/* request delayed reset for the error recovery because an immediate
	 * global reset on a PF affecting pending initialization of other PFs
	 */
	if (ae_dev->hw_err_reset_req) {
		enum hnae3_reset_type reset_level;

		reset_level = FUNC19(ae_dev,
						    &ae_dev->hw_err_reset_req);
		FUNC34(ae_dev, reset_level);
		FUNC39(&hdev->reset_timer, jiffies + HCLGE_RESET_INTERVAL);
	}

	/* Enable MISC vector(vector0) */
	FUNC17(&hdev->misc_vector, true);

	FUNC35(hdev);
	hdev->last_reset_time = jiffies;

	FUNC4(&hdev->pdev->dev, "%s driver initialization finished.\n",
		 HCLGE_DRIVER_NAME);

	return 0;

err_mdiobus_unreg:
	if (hdev->hw.mac.phydev)
		FUNC38(hdev->hw.mac.mdio_bus);
err_msi_irq_uninit:
	FUNC30(hdev);
err_msi_uninit:
	FUNC43(pdev);
err_cmd_uninit:
	FUNC12(hdev);
err_pci_uninit:
	FUNC45(pdev, hdev->hw.io_base);
	FUNC41(pdev);
	FUNC44(pdev);
	FUNC42(pdev);
out:
	return ret;
}