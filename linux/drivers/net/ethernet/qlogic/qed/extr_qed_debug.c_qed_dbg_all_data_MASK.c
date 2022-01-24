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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct TYPE_4__ {int* param_val; } ;
struct dbg_tools_data {TYPE_2__ grc; } ;
struct qed_hwfn {struct dbg_tools_data dbg_info; } ;
struct TYPE_3__ {size_t engine_for_debug; } ;
struct qed_dev {int num_hwfns; TYPE_1__ dbg_params; struct qed_hwfn* hwfns; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_CFG ; 
 int /*<<< orphan*/  FUNC0 (struct qed_dev*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_dev*,int /*<<< orphan*/ ,char*) ; 
 int ENOENT ; 
 int /*<<< orphan*/  FW_ASSERTS ; 
 int /*<<< orphan*/  GRC_DUMP ; 
 int /*<<< orphan*/  IDLE_CHK ; 
 int /*<<< orphan*/  IGU_FIFO ; 
 int MAX_DBG_GRC_PARAMS ; 
 int /*<<< orphan*/  MCP_TRACE ; 
 int /*<<< orphan*/  NVM_CFG1 ; 
 int /*<<< orphan*/  NVM_META ; 
 int /*<<< orphan*/  PROTECTION_OVERRIDE ; 
 int /*<<< orphan*/  QED_MSG_DEBUG ; 
 int /*<<< orphan*/  QED_NVM_IMAGE_DEFAULT_CFG ; 
 int /*<<< orphan*/  QED_NVM_IMAGE_NVM_CFG1 ; 
 int /*<<< orphan*/  QED_NVM_IMAGE_NVM_META ; 
 int REGDUMP_HEADER_SIZE ; 
 int /*<<< orphan*/  REG_FIFO ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int,scalar_t__) ; 
 int FUNC3 (struct qed_dev*,scalar_t__*,int*) ; 
 int FUNC4 (struct qed_dev*,scalar_t__*,int*) ; 
 int FUNC5 (struct qed_dev*,scalar_t__*,int*) ; 
 int FUNC6 (struct qed_dev*,scalar_t__*,int*) ; 
 int FUNC7 (struct qed_dev*,scalar_t__*,int*) ; 
 int FUNC8 (struct qed_dev*,scalar_t__*,int*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct qed_dev*,scalar_t__*,int*) ; 
 int FUNC10 (struct qed_dev*,scalar_t__*,int*) ; 
 scalar_t__ FUNC11 (struct qed_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct qed_dev*,scalar_t__) ; 

int FUNC13(struct qed_dev *cdev, void *buffer)
{
	u8 cur_engine, omit_engine = 0, org_engine;
	struct qed_hwfn *p_hwfn =
		&cdev->hwfns[cdev->dbg_params.engine_for_debug];
	struct dbg_tools_data *dev_data = &p_hwfn->dbg_info;
	int grc_params[MAX_DBG_GRC_PARAMS], i;
	u32 offset = 0, feature_size;
	int rc;

	for (i = 0; i < MAX_DBG_GRC_PARAMS; i++)
		grc_params[i] = dev_data->grc.param_val[i];

	if (cdev->num_hwfns == 1)
		omit_engine = 1;

	org_engine = FUNC11(cdev);
	for (cur_engine = 0; cur_engine < cdev->num_hwfns; cur_engine++) {
		/* Collect idle_chks and grcDump for each hw function */
		FUNC1(cdev, QED_MSG_DEBUG,
			   "obtaining idle_chk and grcdump for current engine\n");
		FUNC12(cdev, cur_engine);

		/* First idle_chk */
		rc = FUNC5(cdev, (u8 *)buffer + offset +
				      REGDUMP_HEADER_SIZE, &feature_size);
		if (!rc) {
			*(u32 *)((u8 *)buffer + offset) =
			    FUNC2(IDLE_CHK, cur_engine,
						    feature_size, omit_engine);
			offset += (feature_size + REGDUMP_HEADER_SIZE);
		} else {
			FUNC0(cdev, "qed_dbg_idle_chk failed. rc = %d\n", rc);
		}

		/* Second idle_chk */
		rc = FUNC5(cdev, (u8 *)buffer + offset +
				      REGDUMP_HEADER_SIZE, &feature_size);
		if (!rc) {
			*(u32 *)((u8 *)buffer + offset) =
			    FUNC2(IDLE_CHK, cur_engine,
						    feature_size, omit_engine);
			offset += (feature_size + REGDUMP_HEADER_SIZE);
		} else {
			FUNC0(cdev, "qed_dbg_idle_chk failed. rc = %d\n", rc);
		}

		/* reg_fifo dump */
		rc = FUNC10(cdev, (u8 *)buffer + offset +
				      REGDUMP_HEADER_SIZE, &feature_size);
		if (!rc) {
			*(u32 *)((u8 *)buffer + offset) =
			    FUNC2(REG_FIFO, cur_engine,
						    feature_size, omit_engine);
			offset += (feature_size + REGDUMP_HEADER_SIZE);
		} else {
			FUNC0(cdev, "qed_dbg_reg_fifo failed. rc = %d\n", rc);
		}

		/* igu_fifo dump */
		rc = FUNC6(cdev, (u8 *)buffer + offset +
				      REGDUMP_HEADER_SIZE, &feature_size);
		if (!rc) {
			*(u32 *)((u8 *)buffer + offset) =
			    FUNC2(IGU_FIFO, cur_engine,
						    feature_size, omit_engine);
			offset += (feature_size + REGDUMP_HEADER_SIZE);
		} else {
			FUNC0(cdev, "qed_dbg_igu_fifo failed. rc = %d", rc);
		}

		/* protection_override dump */
		rc = FUNC9(cdev, (u8 *)buffer + offset +
						 REGDUMP_HEADER_SIZE,
						 &feature_size);
		if (!rc) {
			*(u32 *)((u8 *)buffer + offset) =
			    FUNC2(PROTECTION_OVERRIDE,
						    cur_engine,
						    feature_size, omit_engine);
			offset += (feature_size + REGDUMP_HEADER_SIZE);
		} else {
			FUNC0(cdev,
			       "qed_dbg_protection_override failed. rc = %d\n",
			       rc);
		}

		/* fw_asserts dump */
		rc = FUNC3(cdev, (u8 *)buffer + offset +
					REGDUMP_HEADER_SIZE, &feature_size);
		if (!rc) {
			*(u32 *)((u8 *)buffer + offset) =
			    FUNC2(FW_ASSERTS, cur_engine,
						    feature_size, omit_engine);
			offset += (feature_size + REGDUMP_HEADER_SIZE);
		} else {
			FUNC0(cdev, "qed_dbg_fw_asserts failed. rc = %d\n",
			       rc);
		}

		for (i = 0; i < MAX_DBG_GRC_PARAMS; i++)
			dev_data->grc.param_val[i] = grc_params[i];

		/* GRC dump - must be last because when mcp stuck it will
		 * clutter idle_chk, reg_fifo, ...
		 */
		rc = FUNC4(cdev, (u8 *)buffer + offset +
				 REGDUMP_HEADER_SIZE, &feature_size);
		if (!rc) {
			*(u32 *)((u8 *)buffer + offset) =
			    FUNC2(GRC_DUMP, cur_engine,
						    feature_size, omit_engine);
			offset += (feature_size + REGDUMP_HEADER_SIZE);
		} else {
			FUNC0(cdev, "qed_dbg_grc failed. rc = %d", rc);
		}
	}

	FUNC12(cdev, org_engine);
	/* mcp_trace */
	rc = FUNC7(cdev, (u8 *)buffer + offset +
			       REGDUMP_HEADER_SIZE, &feature_size);
	if (!rc) {
		*(u32 *)((u8 *)buffer + offset) =
		    FUNC2(MCP_TRACE, cur_engine,
					    feature_size, omit_engine);
		offset += (feature_size + REGDUMP_HEADER_SIZE);
	} else {
		FUNC0(cdev, "qed_dbg_mcp_trace failed. rc = %d\n", rc);
	}

	/* nvm cfg1 */
	rc = FUNC8(cdev,
			       (u8 *)buffer + offset + REGDUMP_HEADER_SIZE,
			       &feature_size, QED_NVM_IMAGE_NVM_CFG1);
	if (!rc) {
		*(u32 *)((u8 *)buffer + offset) =
		    FUNC2(NVM_CFG1, cur_engine,
					    feature_size, omit_engine);
		offset += (feature_size + REGDUMP_HEADER_SIZE);
	} else if (rc != -ENOENT) {
		FUNC0(cdev,
		       "qed_dbg_nvm_image failed for image  %d (%s), rc = %d\n",
		       QED_NVM_IMAGE_NVM_CFG1, "QED_NVM_IMAGE_NVM_CFG1", rc);
	}

	/* nvm default */
	rc = FUNC8(cdev,
			       (u8 *)buffer + offset + REGDUMP_HEADER_SIZE,
			       &feature_size, QED_NVM_IMAGE_DEFAULT_CFG);
	if (!rc) {
		*(u32 *)((u8 *)buffer + offset) =
		    FUNC2(DEFAULT_CFG, cur_engine,
					    feature_size, omit_engine);
		offset += (feature_size + REGDUMP_HEADER_SIZE);
	} else if (rc != -ENOENT) {
		FUNC0(cdev,
		       "qed_dbg_nvm_image failed for image %d (%s), rc = %d\n",
		       QED_NVM_IMAGE_DEFAULT_CFG, "QED_NVM_IMAGE_DEFAULT_CFG",
		       rc);
	}

	/* nvm meta */
	rc = FUNC8(cdev,
			       (u8 *)buffer + offset + REGDUMP_HEADER_SIZE,
			       &feature_size, QED_NVM_IMAGE_NVM_META);
	if (!rc) {
		*(u32 *)((u8 *)buffer + offset) =
		    FUNC2(NVM_META, cur_engine,
					    feature_size, omit_engine);
		offset += (feature_size + REGDUMP_HEADER_SIZE);
	} else if (rc != -ENOENT) {
		FUNC0(cdev,
		       "qed_dbg_nvm_image failed for image %d (%s), rc = %d\n",
		       QED_NVM_IMAGE_NVM_META, "QED_NVM_IMAGE_NVM_META", rc);
	}

	return 0;
}