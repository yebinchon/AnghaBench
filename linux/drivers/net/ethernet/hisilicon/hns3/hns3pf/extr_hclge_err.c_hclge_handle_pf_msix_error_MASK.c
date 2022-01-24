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
struct hclge_dev {int /*<<< orphan*/  hw; TYPE_1__* pdev; } ;
struct hclge_desc {int /*<<< orphan*/ * data; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int HCLGE_PPU_PF_INT_MSIX_MASK ; 
 int HCLGE_PPU_PF_OVER_8BD_ERR_MASK ; 
 int /*<<< orphan*/  HCLGE_QUERY_CLEAR_ALL_PF_MSIX_INT ; 
 int HCLGE_SSU_PORT_INT_MSIX_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int FUNC1 (struct hclge_dev*,struct hclge_desc*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hclge_dev*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int /*<<< orphan*/ *,int,unsigned long*) ; 
 int /*<<< orphan*/ * hclge_ppp_pf_abnormal_int ; 
 int /*<<< orphan*/ * hclge_ppu_pf_abnormal_int ; 
 int /*<<< orphan*/ * hclge_ssu_port_based_pf_int ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct hclge_dev *hdev,
				      struct hclge_desc *desc,
				      int pf_bd_num,
				      unsigned long *reset_requests)
{
	struct device *dev = &hdev->pdev->dev;
	__le32 *desc_data;
	u32 status;
	int ret;

	/* query all PF MSIx errors */
	FUNC3(&desc[0], HCLGE_QUERY_CLEAR_ALL_PF_MSIX_INT,
				   true);
	ret = FUNC2(&hdev->hw, &desc[0], pf_bd_num);
	if (ret) {
		FUNC0(dev, "query all pf msix int cmd failed (%d)\n", ret);
		return ret;
	}

	/* log SSU PF errors */
	status = FUNC6(desc[0].data[0]) & HCLGE_SSU_PORT_INT_MSIX_MASK;
	if (status)
		FUNC5(dev, "SSU_PORT_BASED_ERR_INT",
				&hclge_ssu_port_based_pf_int[0],
				status, reset_requests);

	/* read and log PPP PF errors */
	desc_data = (__le32 *)&desc[2];
	status = FUNC6(*desc_data);
	if (status)
		FUNC5(dev, "PPP_PF_ABNORMAL_INT_ST0",
				&hclge_ppp_pf_abnormal_int[0],
				status, reset_requests);

	/* log PPU(RCB) PF errors */
	desc_data = (__le32 *)&desc[3];
	status = FUNC6(*desc_data) & HCLGE_PPU_PF_INT_MSIX_MASK;
	if (status)
		FUNC5(dev, "PPU_PF_ABNORMAL_INT_ST",
				&hclge_ppu_pf_abnormal_int[0],
				status, reset_requests);

	status = FUNC6(*desc_data) & HCLGE_PPU_PF_OVER_8BD_ERR_MASK;
	if (status)
		FUNC4(hdev, reset_requests);

	/* clear all PF MSIx errors */
	ret = FUNC1(hdev, desc, false, pf_bd_num);
	if (ret)
		FUNC0(dev, "clear all pf msix int cmd failed (%d)\n", ret);

	return ret;
}