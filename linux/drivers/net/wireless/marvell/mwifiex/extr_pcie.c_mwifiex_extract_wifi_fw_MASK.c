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
struct TYPE_2__ {int /*<<< orphan*/  data_length; int /*<<< orphan*/  dnld_cmd; } ;
struct mwifiex_fw_data {TYPE_1__ header; } ;
struct mwifiex_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  MSG ; 
#define  MWIFIEX_FW_DNLD_CMD_1 131 
#define  MWIFIEX_FW_DNLD_CMD_5 130 
#define  MWIFIEX_FW_DNLD_CMD_6 129 
#define  MWIFIEX_FW_DNLD_CMD_7 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC2(struct mwifiex_adapter *adapter,
				   const void *firmware, u32 firmware_len) {
	const struct mwifiex_fw_data *fwdata;
	u32 offset = 0, data_len, dnld_cmd;
	int ret = 0;
	bool cmd7_before = false, first_cmd = false;

	while (1) {
		/* Check for integer and buffer overflow */
		if (offset + sizeof(fwdata->header) < sizeof(fwdata->header) ||
		    offset + sizeof(fwdata->header) >= firmware_len) {
			FUNC1(adapter, ERROR,
				    "extract wifi-only fw failure!\n");
			ret = -1;
			goto done;
		}

		fwdata = firmware + offset;
		dnld_cmd = FUNC0(fwdata->header.dnld_cmd);
		data_len = FUNC0(fwdata->header.data_length);

		/* Skip past header */
		offset += sizeof(fwdata->header);

		switch (dnld_cmd) {
		case MWIFIEX_FW_DNLD_CMD_1:
			if (offset + data_len < data_len) {
				FUNC1(adapter, ERROR, "bad FW parse\n");
				ret = -1;
				goto done;
			}

			/* Image start with cmd1, already wifi-only firmware */
			if (!first_cmd) {
				FUNC1(adapter, MSG,
					    "input wifi-only firmware\n");
				return 0;
			}

			if (!cmd7_before) {
				FUNC1(adapter, ERROR,
					    "no cmd7 before cmd1!\n");
				ret = -1;
				goto done;
			}
			offset += data_len;
			break;
		case MWIFIEX_FW_DNLD_CMD_5:
			first_cmd = true;
			/* Check for integer overflow */
			if (offset + data_len < data_len) {
				FUNC1(adapter, ERROR, "bad FW parse\n");
				ret = -1;
				goto done;
			}
			offset += data_len;
			break;
		case MWIFIEX_FW_DNLD_CMD_6:
			first_cmd = true;
			/* Check for integer overflow */
			if (offset + data_len < data_len) {
				FUNC1(adapter, ERROR, "bad FW parse\n");
				ret = -1;
				goto done;
			}
			offset += data_len;
			if (offset >= firmware_len) {
				FUNC1(adapter, ERROR,
					    "extract wifi-only fw failure!\n");
				ret = -1;
			} else {
				ret = offset;
			}
			goto done;
		case MWIFIEX_FW_DNLD_CMD_7:
			first_cmd = true;
			cmd7_before = true;
			break;
		default:
			FUNC1(adapter, ERROR, "unknown dnld_cmd %d\n",
				    dnld_cmd);
			ret = -1;
			goto done;
		}
	}

done:
	return ret;
}