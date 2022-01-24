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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int HCLGE_IGU_INT_MASK ; 
 int HCLGE_NCSI_ECC_INT_MASK ; 
 int HCLGE_PPP_MPF_INT_ST3_MASK ; 
 int HCLGE_PPU_MPF_INT_ST3_MASK ; 
 int HCLGE_QCN_ECC_INT_MASK ; 
 int HCLGE_QCN_FIFO_INT_MASK ; 
 int /*<<< orphan*/  HCLGE_QUERY_CLEAR_MPF_RAS_INT ; 
 int HCLGE_SSU_COMMON_ERR_INT_MASK ; 
 int /*<<< orphan*/  HNAE3_GLOBAL_RESET ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct hclge_desc*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * hclge_cmdq_nic_mem_ecc_int ; 
 int /*<<< orphan*/ * hclge_igu_int ; 
 int /*<<< orphan*/ * hclge_imp_tcm_ecc_int ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * hclge_msix_sram_ecc_int ; 
 int /*<<< orphan*/ * hclge_ncsi_err_int ; 
 int /*<<< orphan*/ * hclge_ppp_mpf_abnormal_int_st1 ; 
 int /*<<< orphan*/ * hclge_ppp_mpf_abnormal_int_st3 ; 
 int /*<<< orphan*/ * hclge_ppu_mpf_abnormal_int_st2 ; 
 int /*<<< orphan*/ * hclge_ppu_mpf_abnormal_int_st3 ; 
 int /*<<< orphan*/ * hclge_qcn_ecc_rint ; 
 int /*<<< orphan*/ * hclge_qcn_fifo_rint ; 
 int /*<<< orphan*/ * hclge_ssu_com_err_int ; 
 int /*<<< orphan*/ * hclge_ssu_mem_ecc_err_int ; 
 int /*<<< orphan*/ * hclge_tm_sch_rint ; 
 int /*<<< orphan*/ * hclge_tqp_int_ecc_int ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct hclge_dev *hdev,
				      struct hclge_desc *desc,
				      int num)
{
	struct hnae3_ae_dev *ae_dev = hdev->ae_dev;
	struct device *dev = &hdev->pdev->dev;
	__le32 *desc_data;
	u32 status;
	int ret;

	/* query all main PF RAS errors */
	FUNC5(&desc[0], HCLGE_QUERY_CLEAR_MPF_RAS_INT,
				   true);
	ret = FUNC4(&hdev->hw, &desc[0], num);
	if (ret) {
		FUNC1(dev, "query all mpf ras int cmd failed (%d)\n", ret);
		return ret;
	}

	/* log HNS common errors */
	status = FUNC7(desc[0].data[0]);
	if (status)
		FUNC6(dev, "IMP_TCM_ECC_INT_STS",
				&hclge_imp_tcm_ecc_int[0], status,
				&ae_dev->hw_err_reset_req);

	status = FUNC7(desc[0].data[1]);
	if (status)
		FUNC6(dev, "CMDQ_MEM_ECC_INT_STS",
				&hclge_cmdq_nic_mem_ecc_int[0], status,
				&ae_dev->hw_err_reset_req);

	if ((FUNC7(desc[0].data[2])) & FUNC0(0))
		FUNC2(dev, "imp_rd_data_poison_err found\n");

	status = FUNC7(desc[0].data[3]);
	if (status)
		FUNC6(dev, "TQP_INT_ECC_INT_STS",
				&hclge_tqp_int_ecc_int[0], status,
				&ae_dev->hw_err_reset_req);

	status = FUNC7(desc[0].data[4]);
	if (status)
		FUNC6(dev, "MSIX_ECC_INT_STS",
				&hclge_msix_sram_ecc_int[0], status,
				&ae_dev->hw_err_reset_req);

	/* log SSU(Storage Switch Unit) errors */
	desc_data = (__le32 *)&desc[2];
	status = FUNC7(*(desc_data + 2));
	if (status)
		FUNC6(dev, "SSU_ECC_MULTI_BIT_INT_0",
				&hclge_ssu_mem_ecc_err_int[0], status,
				&ae_dev->hw_err_reset_req);

	status = FUNC7(*(desc_data + 3)) & FUNC0(0);
	if (status) {
		FUNC1(dev, "SSU_ECC_MULTI_BIT_INT_1 ssu_mem32_ecc_mbit_err found [error status=0x%x]\n",
			status);
		FUNC8(HNAE3_GLOBAL_RESET, &ae_dev->hw_err_reset_req);
	}

	status = FUNC7(*(desc_data + 4)) & HCLGE_SSU_COMMON_ERR_INT_MASK;
	if (status)
		FUNC6(dev, "SSU_COMMON_ERR_INT",
				&hclge_ssu_com_err_int[0], status,
				&ae_dev->hw_err_reset_req);

	/* log IGU(Ingress Unit) errors */
	desc_data = (__le32 *)&desc[3];
	status = FUNC7(*desc_data) & HCLGE_IGU_INT_MASK;
	if (status)
		FUNC6(dev, "IGU_INT_STS",
				&hclge_igu_int[0], status,
				&ae_dev->hw_err_reset_req);

	/* log PPP(Programmable Packet Process) errors */
	desc_data = (__le32 *)&desc[4];
	status = FUNC7(*(desc_data + 1));
	if (status)
		FUNC6(dev, "PPP_MPF_ABNORMAL_INT_ST1",
				&hclge_ppp_mpf_abnormal_int_st1[0], status,
				&ae_dev->hw_err_reset_req);

	status = FUNC7(*(desc_data + 3)) & HCLGE_PPP_MPF_INT_ST3_MASK;
	if (status)
		FUNC6(dev, "PPP_MPF_ABNORMAL_INT_ST3",
				&hclge_ppp_mpf_abnormal_int_st3[0], status,
				&ae_dev->hw_err_reset_req);

	/* log PPU(RCB) errors */
	desc_data = (__le32 *)&desc[5];
	status = FUNC7(*(desc_data + 1));
	if (status) {
		FUNC1(dev,
			"PPU_MPF_ABNORMAL_INT_ST1 rpu_rx_pkt_ecc_mbit_err found\n");
		FUNC8(HNAE3_GLOBAL_RESET, &ae_dev->hw_err_reset_req);
	}

	status = FUNC7(*(desc_data + 2));
	if (status)
		FUNC6(dev, "PPU_MPF_ABNORMAL_INT_ST2",
				&hclge_ppu_mpf_abnormal_int_st2[0], status,
				&ae_dev->hw_err_reset_req);

	status = FUNC7(*(desc_data + 3)) & HCLGE_PPU_MPF_INT_ST3_MASK;
	if (status)
		FUNC6(dev, "PPU_MPF_ABNORMAL_INT_ST3",
				&hclge_ppu_mpf_abnormal_int_st3[0], status,
				&ae_dev->hw_err_reset_req);

	/* log TM(Traffic Manager) errors */
	desc_data = (__le32 *)&desc[6];
	status = FUNC7(*desc_data);
	if (status)
		FUNC6(dev, "TM_SCH_RINT",
				&hclge_tm_sch_rint[0], status,
				&ae_dev->hw_err_reset_req);

	/* log QCN(Quantized Congestion Control) errors */
	desc_data = (__le32 *)&desc[7];
	status = FUNC7(*desc_data) & HCLGE_QCN_FIFO_INT_MASK;
	if (status)
		FUNC6(dev, "QCN_FIFO_RINT",
				&hclge_qcn_fifo_rint[0], status,
				&ae_dev->hw_err_reset_req);

	status = FUNC7(*(desc_data + 1)) & HCLGE_QCN_ECC_INT_MASK;
	if (status)
		FUNC6(dev, "QCN_ECC_RINT",
				&hclge_qcn_ecc_rint[0], status,
				&ae_dev->hw_err_reset_req);

	/* log NCSI errors */
	desc_data = (__le32 *)&desc[9];
	status = FUNC7(*desc_data) & HCLGE_NCSI_ECC_INT_MASK;
	if (status)
		FUNC6(dev, "NCSI_ECC_INT_RPT",
				&hclge_ncsi_err_int[0], status,
				&ae_dev->hw_err_reset_req);

	/* clear all main PF RAS errors */
	FUNC3(&desc[0], false);
	ret = FUNC4(&hdev->hw, &desc[0], num);
	if (ret)
		FUNC1(dev, "clear all mpf ras int cmd failed (%d)\n", ret);

	return ret;
}