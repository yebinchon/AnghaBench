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
struct hnae3_ae_dev {int /*<<< orphan*/  hw_err_reset_req; } ;
struct hclge_dev {int /*<<< orphan*/  hw; TYPE_1__* pdev; struct hnae3_ae_dev* ae_dev; } ;
struct hclge_desc {int /*<<< orphan*/ * data; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int HCLGE_IGU_EGU_TNL_INT_MASK ; 
 int HCLGE_PPU_PF_INT_RAS_MASK ; 
 int /*<<< orphan*/  HCLGE_QUERY_CLEAR_PF_RAS_INT ; 
 int /*<<< orphan*/  HNAE3_PPU_POISON_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hclge_desc*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * hclge_igu_egu_tnl_int ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * hclge_ppu_pf_abnormal_int ; 
 int /*<<< orphan*/  FUNC5 (struct hclge_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * hclge_ssu_ets_tcg_int ; 
 int /*<<< orphan*/ * hclge_ssu_fifo_overflow_int ; 
 int /*<<< orphan*/ * hclge_ssu_port_based_err_int ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct hclge_dev *hdev,
				     struct hclge_desc *desc,
				     int num)
{
	struct hnae3_ae_dev *ae_dev = hdev->ae_dev;
	struct device *dev = &hdev->pdev->dev;
	__le32 *desc_data;
	u32 status;
	int ret;

	/* query all PF RAS errors */
	FUNC3(&desc[0], HCLGE_QUERY_CLEAR_PF_RAS_INT,
				   true);
	ret = FUNC2(&hdev->hw, &desc[0], num);
	if (ret) {
		FUNC0(dev, "query all pf ras int cmd failed (%d)\n", ret);
		return ret;
	}

	/* log SSU(Storage Switch Unit) errors */
	status = FUNC6(desc[0].data[0]);
	if (status)
		FUNC4(dev, "SSU_PORT_BASED_ERR_INT",
				&hclge_ssu_port_based_err_int[0], status,
				&ae_dev->hw_err_reset_req);

	status = FUNC6(desc[0].data[1]);
	if (status)
		FUNC4(dev, "SSU_FIFO_OVERFLOW_INT",
				&hclge_ssu_fifo_overflow_int[0], status,
				&ae_dev->hw_err_reset_req);

	status = FUNC6(desc[0].data[2]);
	if (status)
		FUNC4(dev, "SSU_ETS_TCG_INT",
				&hclge_ssu_ets_tcg_int[0], status,
				&ae_dev->hw_err_reset_req);

	/* log IGU(Ingress Unit) EGU(Egress Unit) TNL errors */
	desc_data = (__le32 *)&desc[1];
	status = FUNC6(*desc_data) & HCLGE_IGU_EGU_TNL_INT_MASK;
	if (status)
		FUNC4(dev, "IGU_EGU_TNL_INT_STS",
				&hclge_igu_egu_tnl_int[0], status,
				&ae_dev->hw_err_reset_req);

	/* log PPU(RCB) errors */
	desc_data = (__le32 *)&desc[3];
	status = FUNC6(*desc_data) & HCLGE_PPU_PF_INT_RAS_MASK;
	if (status) {
		FUNC4(dev, "PPU_PF_ABNORMAL_INT_ST0",
				&hclge_ppu_pf_abnormal_int[0], status,
				&ae_dev->hw_err_reset_req);
		FUNC5(hdev, HNAE3_PPU_POISON_ERROR);
	}

	/* clear all PF RAS errors */
	FUNC1(&desc[0], false);
	ret = FUNC2(&hdev->hw, &desc[0], num);
	if (ret)
		FUNC0(dev, "clear all pf ras int cmd failed (%d)\n", ret);

	return ret;
}