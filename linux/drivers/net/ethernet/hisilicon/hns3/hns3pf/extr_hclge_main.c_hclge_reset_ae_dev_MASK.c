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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct hnae3_ae_dev {struct pci_dev* pdev; struct hclge_dev* priv; } ;
struct hclge_dev {scalar_t__ roce_client; int /*<<< orphan*/  vf_vlan_full; int /*<<< orphan*/  vlan_table; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_DRIVER_NAME ; 
 int /*<<< orphan*/  HCLGE_STATE_DOWN ; 
 int /*<<< orphan*/  HCLGE_TSO_MSS_MAX ; 
 int /*<<< orphan*/  HCLGE_TSO_MSS_MIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hclge_dev*) ; 
 int FUNC3 (struct hclge_dev*,int) ; 
 int FUNC4 (struct hclge_dev*,int) ; 
 int FUNC5 (struct hclge_dev*,int) ; 
 int FUNC6 (struct hclge_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct hclge_dev*) ; 
 int FUNC8 (struct hclge_dev*) ; 
 int FUNC9 (struct hclge_dev*) ; 
 int FUNC10 (struct hclge_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct hclge_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct hclge_dev*) ; 
 int FUNC13 (struct hclge_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct hclge_dev*) ; 
 int FUNC15 (struct hclge_dev*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct hnae3_ae_dev *ae_dev)
{
	struct hclge_dev *hdev = ae_dev->priv;
	struct pci_dev *pdev = ae_dev->pdev;
	int ret;

	FUNC17(HCLGE_STATE_DOWN, &hdev->state);

	FUNC14(hdev);
	FUNC16(hdev->vlan_table, 0, sizeof(hdev->vlan_table));
	FUNC16(hdev->vf_vlan_full, 0, sizeof(hdev->vf_vlan_full));

	ret = FUNC2(hdev);
	if (ret) {
		FUNC0(&pdev->dev, "Cmd queue init failed\n");
		return ret;
	}

	ret = FUNC10(hdev);
	if (ret) {
		FUNC0(&pdev->dev, "Map tqp error, ret = %d.\n", ret);
		return ret;
	}

	FUNC11(hdev);

	ret = FUNC9(hdev);
	if (ret) {
		FUNC0(&pdev->dev, "Mac init error, ret = %d\n", ret);
		return ret;
	}

	ret = FUNC6(hdev, HCLGE_TSO_MSS_MIN, HCLGE_TSO_MSS_MAX);
	if (ret) {
		FUNC0(&pdev->dev, "Enable tso fail, ret =%d\n", ret);
		return ret;
	}

	ret = FUNC3(hdev, true);
	if (ret)
		return ret;

	ret = FUNC8(hdev);
	if (ret) {
		FUNC0(&pdev->dev, "VLAN init fail, ret =%d\n", ret);
		return ret;
	}

	ret = FUNC15(hdev, true);
	if (ret) {
		FUNC0(&pdev->dev, "tm init hw fail, ret =%d\n", ret);
		return ret;
	}

	ret = FUNC13(hdev);
	if (ret) {
		FUNC0(&pdev->dev, "Rss init fail, ret =%d\n", ret);
		return ret;
	}

	ret = FUNC7(hdev);
	if (ret) {
		FUNC0(&pdev->dev, "fd table init fail, ret=%d\n", ret);
		return ret;
	}

	/* Re-enable the hw error interrupts because
	 * the interrupts get disabled on global reset.
	 */
	ret = FUNC4(hdev, true);
	if (ret) {
		FUNC0(&pdev->dev,
			"fail(%d) to re-enable NIC hw error interrupts\n",
			ret);
		return ret;
	}

	if (hdev->roce_client) {
		ret = FUNC5(hdev, true);
		if (ret) {
			FUNC0(&pdev->dev,
				"fail(%d) to re-enable roce ras interrupts\n",
				ret);
			return ret;
		}
	}

	FUNC12(hdev);

	FUNC1(&pdev->dev, "Reset done, %s driver initialization finished.\n",
		 HCLGE_DRIVER_NAME);

	return 0;
}