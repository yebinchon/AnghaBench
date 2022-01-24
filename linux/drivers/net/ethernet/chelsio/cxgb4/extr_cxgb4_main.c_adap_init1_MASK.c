#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct fw_caps_config_cmd {void* op_to_write; void* cfvalid_to_len16; } ;
struct TYPE_5__ {int tx_modq_map; } ;
struct TYPE_6__ {TYPE_2__ tp; } ;
struct TYPE_4__ {int /*<<< orphan*/  egr_sz; } ;
struct adapter {int /*<<< orphan*/  pf; TYPE_3__ params; TYPE_1__ sge; int /*<<< orphan*/  mbox; int /*<<< orphan*/  pdev_dev; } ;

/* Variables and functions */
 int CSUM_HAS_PSEUDO_HDR_F ; 
 int /*<<< orphan*/  FW_CAPS_CONFIG_CMD ; 
 int /*<<< orphan*/  FW_CMD_CAP_PF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FW_CMD_READ_F ; 
 int FW_CMD_REQUEST_F ; 
 int FW_CMD_WRITE_F ; 
 int FUNC1 (struct fw_caps_config_cmd) ; 
 int /*<<< orphan*/  FW_RSS_GLB_CONFIG_CMD_MODE_BASICVIRTUAL ; 
 int FW_RSS_GLB_CONFIG_CMD_TNLALLLKP_F ; 
 int FW_RSS_GLB_CONFIG_CMD_TNLMAPEN_F ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  MAX_INGQ ; 
 scalar_t__ PAGE_SHIFT ; 
 int /*<<< orphan*/  T4_TX_MODQ_10G_WEIGHT_DEFAULT ; 
 int TP_INGRESS_CONFIG_A ; 
 int /*<<< orphan*/  TP_PIO_ADDR_A ; 
 int /*<<< orphan*/  TP_PIO_DATA_A ; 
 int /*<<< orphan*/  TP_SHIFT_CNT_A ; 
 int /*<<< orphan*/  TP_TX_MOD_CHANNEL_WEIGHT_A ; 
 int /*<<< orphan*/  TP_TX_MOD_QUEUE_REQ_MAP_A ; 
 int /*<<< orphan*/  TP_TX_MOD_QUEUE_WEIGHT0_A ; 
 int /*<<< orphan*/  TP_TX_SCHED_FIFO_A ; 
 int /*<<< orphan*/  TP_TX_SCHED_HDR_A ; 
 int /*<<< orphan*/  TP_TX_SCHED_PCMD_A ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  ULP_RX_TDDP_PSZ_A ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC9 (int) ; 
 scalar_t__ FUNC10 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct fw_caps_config_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct adapter*) ; 
 int FUNC16 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct adapter*) ; 
 int FUNC18 (struct adapter*,int /*<<< orphan*/ ,struct fw_caps_config_cmd*,int,struct fw_caps_config_cmd*) ; 
 int /*<<< orphan*/  FUNC19 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC21(struct adapter *adap, struct fw_caps_config_cmd *c)
{
	u32 v;
	int ret;

	/* Now that we've successfully configured and initialized the adapter
	 * can ask the Firmware what resources it has provisioned for us.
	 */
	ret = FUNC15(adap);
	if (ret) {
		FUNC8(adap->pdev_dev,
			"Unable to retrieve resource provisioning information\n");
		return ret;
	}

	/* get device capabilities */
	FUNC11(c, 0, sizeof(*c));
	c->op_to_write = FUNC9(FUNC0(FW_CAPS_CONFIG_CMD) |
			       FW_CMD_REQUEST_F | FW_CMD_READ_F);
	c->cfvalid_to_len16 = FUNC9(FUNC1(*c));
	ret = FUNC18(adap, adap->mbox, c, sizeof(*c), c);
	if (ret < 0)
		return ret;

	c->op_to_write = FUNC9(FUNC0(FW_CAPS_CONFIG_CMD) |
			       FW_CMD_REQUEST_F | FW_CMD_WRITE_F);
	ret = FUNC18(adap, adap->mbox, c, sizeof(*c), NULL);
	if (ret < 0)
		return ret;

	ret = FUNC13(adap, adap->pf,
				 FW_RSS_GLB_CONFIG_CMD_MODE_BASICVIRTUAL,
				 FW_RSS_GLB_CONFIG_CMD_TNLMAPEN_F |
				 FW_RSS_GLB_CONFIG_CMD_TNLALLLKP_F);
	if (ret < 0)
		return ret;

	ret = FUNC12(adap, adap->mbox, adap->pf, 0, adap->sge.egr_sz, 64,
			  MAX_INGQ, 0, 0, 4, 0xf, 0xf, 16, FW_CMD_CAP_PF,
			  FW_CMD_CAP_PF);
	if (ret < 0)
		return ret;

	FUNC17(adap);

	/* tweak some settings */
	FUNC20(adap, TP_SHIFT_CNT_A, 0x64f8849);
	FUNC20(adap, ULP_RX_TDDP_PSZ_A, FUNC2(PAGE_SHIFT - 12));
	FUNC20(adap, TP_PIO_ADDR_A, TP_INGRESS_CONFIG_A);
	v = FUNC16(adap, TP_PIO_DATA_A);
	FUNC20(adap, TP_PIO_DATA_A, v & ~CSUM_HAS_PSEUDO_HDR_F);

	/* first 4 Tx modulation queues point to consecutive Tx channels */
	adap->params.tp.tx_modq_map = 0xE4;
	FUNC20(adap, TP_TX_MOD_QUEUE_REQ_MAP_A,
		     FUNC7(adap->params.tp.tx_modq_map));

	/* associate each Tx modulation queue with consecutive Tx channels */
	v = 0x84218421;
	FUNC19(adap, TP_PIO_ADDR_A, TP_PIO_DATA_A,
			  &v, 1, TP_TX_SCHED_HDR_A);
	FUNC19(adap, TP_PIO_ADDR_A, TP_PIO_DATA_A,
			  &v, 1, TP_TX_SCHED_FIFO_A);
	FUNC19(adap, TP_PIO_ADDR_A, TP_PIO_DATA_A,
			  &v, 1, TP_TX_SCHED_PCMD_A);

#define T4_TX_MODQ_10G_WEIGHT_DEFAULT 16 /* in KB units */
	if (FUNC10(adap)) {
		FUNC20(adap, TP_TX_MOD_QUEUE_WEIGHT0_A,
			     FUNC3(T4_TX_MODQ_10G_WEIGHT_DEFAULT) |
			     FUNC4(T4_TX_MODQ_10G_WEIGHT_DEFAULT) |
			     FUNC5(T4_TX_MODQ_10G_WEIGHT_DEFAULT) |
			     FUNC6(T4_TX_MODQ_10G_WEIGHT_DEFAULT));
		FUNC20(adap, TP_TX_MOD_CHANNEL_WEIGHT_A,
			     FUNC3(T4_TX_MODQ_10G_WEIGHT_DEFAULT) |
			     FUNC4(T4_TX_MODQ_10G_WEIGHT_DEFAULT) |
			     FUNC5(T4_TX_MODQ_10G_WEIGHT_DEFAULT) |
			     FUNC6(T4_TX_MODQ_10G_WEIGHT_DEFAULT));
	}

	/* get basic stuff going */
	return FUNC14(adap, adap->pf);
}