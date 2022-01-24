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
typedef  scalar_t__ u32 ;
struct fw_caps_config_cmd {void* cfvalid_to_len16; void* op_to_write; int /*<<< orphan*/  cfcsum; int /*<<< orphan*/  finicsum; int /*<<< orphan*/  finiver; } ;
struct firmware {int size; scalar_t__ data; } ;
struct TYPE_3__ {int /*<<< orphan*/  chip; } ;
struct adapter {int /*<<< orphan*/  pdev_dev; int /*<<< orphan*/  mbox; TYPE_1__ params; int /*<<< orphan*/  pf; int /*<<< orphan*/  win0_lock; TYPE_2__* pdev; } ;
typedef  int /*<<< orphan*/  caps_cmd ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {int device; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  CHELSIO_T4 130 
#define  CHELSIO_T5 129 
#define  CHELSIO_T6 128 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int FLASH_CFG_MAX_SIZE ; 
 char* FW4_CFNAME ; 
 char* FW5_CFNAME ; 
 char* FW6_CFNAME ; 
 int /*<<< orphan*/  FW_CAPS_CONFIG_CMD ; 
 int FW_CAPS_CONFIG_CMD_CFVALID_F ; 
 int FUNC1 (unsigned long) ; 
 int FUNC2 (unsigned long) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FW_CMD_READ_F ; 
 int FW_CMD_REQUEST_F ; 
 int FW_CMD_WRITE_F ; 
 int FUNC4 (struct fw_caps_config_cmd) ; 
 unsigned long FW_MEMTYPE_CF_FLASH ; 
 int /*<<< orphan*/  FW_PARAMS_MNEM_DEV ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FW_PARAMS_PARAM_DEV_CF ; 
 int /*<<< orphan*/  FW_PARAMS_PARAM_DEV_HASHFILTER_WITH_OFLD ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 (scalar_t__) ; 
 int FUNC8 (scalar_t__) ; 
 int PIORSTMODE_F ; 
 int PIORST_F ; 
 int /*<<< orphan*/  T4_MEMORY_WRITE ; 
 int FUNC9 (struct adapter*) ; 
 int FUNC10 (struct adapter*) ; 
 int FUNC11 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC15 (int) ; 
 scalar_t__ FUNC16 (int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct fw_caps_config_cmd*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct firmware const*) ; 
 int FUNC21 (struct firmware const**,char*,int /*<<< orphan*/ ) ; 
 int FUNC22 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (char*,char*,char*) ; 
 unsigned long FUNC26 (struct adapter*) ; 
 int FUNC27 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC28 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 int FUNC29 (struct adapter*,int /*<<< orphan*/ ,unsigned long,unsigned long,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC30 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__*,scalar_t__*) ; 
 int FUNC31 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__*,scalar_t__*) ; 
 int FUNC32 (struct adapter*,int /*<<< orphan*/ ,struct fw_caps_config_cmd*,int,struct fw_caps_config_cmd*) ; 

__attribute__((used)) static int FUNC33(struct adapter *adapter, int reset)
{
	char *fw_config_file, fw_config_file_path[256];
	u32 finiver, finicsum, cfcsum, param, val;
	struct fw_caps_config_cmd caps_cmd;
	unsigned long mtype = 0, maddr = 0;
	const struct firmware *cf;
	char *config_name = NULL;
	int config_issued = 0;
	int ret;

	/*
	 * Reset device if necessary.
	 */
	if (reset) {
		ret = FUNC28(adapter, adapter->mbox,
				  PIORSTMODE_F | PIORST_F);
		if (ret < 0)
			goto bye;
	}

	/* If this is a 10Gb/s-BT adapter make sure the chip-external
	 * 10Gb/s-BT PHYs have up-to-date firmware.  Note that this step needs
	 * to be performed after any global adapter RESET above since some
	 * PHYs only have local RAM copies of the PHY firmware.
	 */
	if (FUNC16(adapter->pdev->device)) {
		ret = FUNC10(adapter);
		if (ret < 0)
			goto bye;
	}
	/*
	 * If we have a T4 configuration file under /lib/firmware/cxgb4/,
	 * then use that.  Otherwise, use the configuration file stored
	 * in the adapter flash ...
	 */
	switch (FUNC0(adapter->params.chip)) {
	case CHELSIO_T4:
		fw_config_file = FW4_CFNAME;
		break;
	case CHELSIO_T5:
		fw_config_file = FW5_CFNAME;
		break;
	case CHELSIO_T6:
		fw_config_file = FW6_CFNAME;
		break;
	default:
		FUNC12(adapter->pdev_dev, "Device %d is not supported\n",
		       adapter->pdev->device);
		ret = -EINVAL;
		goto bye;
	}

	ret = FUNC21(&cf, fw_config_file, adapter->pdev_dev);
	if (ret < 0) {
		config_name = "On FLASH";
		mtype = FW_MEMTYPE_CF_FLASH;
		maddr = FUNC26(adapter);
	} else {
		u32 params[7], val[7];

		FUNC25(fw_config_file_path,
			"/lib/firmware/%s", fw_config_file);
		config_name = fw_config_file_path;

		if (cf->size >= FLASH_CFG_MAX_SIZE)
			ret = -ENOMEM;
		else {
			params[0] = (FUNC5(FW_PARAMS_MNEM_DEV) |
			     FUNC6(FW_PARAMS_PARAM_DEV_CF));
			ret = FUNC30(adapter, adapter->mbox,
					      adapter->pf, 0, 1, params, val);
			if (ret == 0) {
				/*
				 * For t4_memory_rw() below addresses and
				 * sizes have to be in terms of multiples of 4
				 * bytes.  So, if the Configuration File isn't
				 * a multiple of 4 bytes in length we'll have
				 * to write that out separately since we can't
				 * guarantee that the bytes following the
				 * residual byte in the buffer returned by
				 * request_firmware() are zeroed out ...
				 */
				size_t resid = cf->size & 0x3;
				size_t size = cf->size & ~0x3;
				__be32 *data = (__be32 *)cf->data;

				mtype = FUNC7(val[0]);
				maddr = FUNC8(val[0]) << 16;

				FUNC23(&adapter->win0_lock);
				ret = FUNC29(adapter, 0, mtype, maddr,
						   size, data, T4_MEMORY_WRITE);
				if (ret == 0 && resid != 0) {
					union {
						__be32 word;
						char buf[4];
					} last;
					int i;

					last.word = data[size >> 2];
					for (i = resid; i < 4; i++)
						last.buf[i] = 0;
					ret = FUNC29(adapter, 0, mtype,
							   maddr + size,
							   4, &last.word,
							   T4_MEMORY_WRITE);
				}
				FUNC24(&adapter->win0_lock);
			}
		}

		FUNC20(cf);
		if (ret)
			goto bye;
	}

	val = 0;

	/* Ofld + Hash filter is supported. Older fw will fail this request and
	 * it is fine.
	 */
	param = (FUNC5(FW_PARAMS_MNEM_DEV) |
		 FUNC6(FW_PARAMS_PARAM_DEV_HASHFILTER_WITH_OFLD));
	ret = FUNC31(adapter, adapter->mbox, adapter->pf, 0,
			    1, &param, &val);

	/* FW doesn't know about Hash filter + ofld support,
	 * it's not a problem, don't return an error.
	 */
	if (ret < 0) {
		FUNC14(adapter->pdev_dev,
			 "Hash filter with ofld is not supported by FW\n");
	}

	/*
	 * Issue a Capability Configuration command to the firmware to get it
	 * to parse the Configuration File.  We don't use t4_fw_config_file()
	 * because we want the ability to modify various features after we've
	 * processed the configuration file ...
	 */
	FUNC18(&caps_cmd, 0, sizeof(caps_cmd));
	caps_cmd.op_to_write =
		FUNC15(FUNC3(FW_CAPS_CONFIG_CMD) |
		      FW_CMD_REQUEST_F |
		      FW_CMD_READ_F);
	caps_cmd.cfvalid_to_len16 =
		FUNC15(FW_CAPS_CONFIG_CMD_CFVALID_F |
		      FUNC2(mtype) |
		      FUNC1(maddr >> 16) |
		      FUNC4(caps_cmd));
	ret = FUNC32(adapter, adapter->mbox, &caps_cmd, sizeof(caps_cmd),
			 &caps_cmd);

	/* If the CAPS_CONFIG failed with an ENOENT (for a Firmware
	 * Configuration File in FLASH), our last gasp effort is to use the
	 * Firmware Configuration File which is embedded in the firmware.  A
	 * very few early versions of the firmware didn't have one embedded
	 * but we can ignore those.
	 */
	if (ret == -ENOENT) {
		FUNC18(&caps_cmd, 0, sizeof(caps_cmd));
		caps_cmd.op_to_write =
			FUNC15(FUNC3(FW_CAPS_CONFIG_CMD) |
					FW_CMD_REQUEST_F |
					FW_CMD_READ_F);
		caps_cmd.cfvalid_to_len16 = FUNC15(FUNC4(caps_cmd));
		ret = FUNC32(adapter, adapter->mbox, &caps_cmd,
				sizeof(caps_cmd), &caps_cmd);
		config_name = "Firmware Default";
	}

	config_issued = 1;
	if (ret < 0)
		goto bye;

	finiver = FUNC19(caps_cmd.finiver);
	finicsum = FUNC19(caps_cmd.finicsum);
	cfcsum = FUNC19(caps_cmd.cfcsum);
	if (finicsum != cfcsum)
		FUNC14(adapter->pdev_dev, "Configuration File checksum "\
			 "mismatch: [fini] csum=%#x, computed csum=%#x\n",
			 finicsum, cfcsum);

	/*
	 * And now tell the firmware to use the configuration we just loaded.
	 */
	caps_cmd.op_to_write =
		FUNC15(FUNC3(FW_CAPS_CONFIG_CMD) |
		      FW_CMD_REQUEST_F |
		      FW_CMD_WRITE_F);
	caps_cmd.cfvalid_to_len16 = FUNC15(FUNC4(caps_cmd));
	ret = FUNC32(adapter, adapter->mbox, &caps_cmd, sizeof(caps_cmd),
			 NULL);
	if (ret < 0)
		goto bye;

	/*
	 * Tweak configuration based on system architecture, module
	 * parameters, etc.
	 */
	ret = FUNC11(adapter);
	if (ret < 0)
		goto bye;

	/* We will proceed even if HMA init fails. */
	ret = FUNC9(adapter);
	if (ret)
		FUNC12(adapter->pdev_dev,
			"HMA configuration failed with error %d\n", ret);

	if (FUNC17(adapter->params.chip)) {
		ret = FUNC22(adapter);
		if (!ret)
			FUNC13(adapter->pdev_dev, "Successfully enabled "
				 "ppod edram feature\n");
	}

	/*
	 * And finally tell the firmware to initialize itself using the
	 * parameters from the Configuration File.
	 */
	ret = FUNC27(adapter, adapter->mbox);
	if (ret < 0)
		goto bye;

	/* Emit Firmware Configuration File information and return
	 * successfully.
	 */
	FUNC13(adapter->pdev_dev, "Successfully configured using Firmware "\
		 "Configuration File \"%s\", version %#x, computed checksum %#x\n",
		 config_name, finiver, cfcsum);
	return 0;

	/*
	 * Something bad happened.  Return the error ...  (If the "error"
	 * is that there's no Configuration File on the adapter we don't
	 * want to issue a warning since this is fairly common.)
	 */
bye:
	if (config_issued && ret != -ENOENT)
		FUNC14(adapter->pdev_dev, "\"%s\" configuration file error %d\n",
			 config_name, -ret);
	return ret;
}