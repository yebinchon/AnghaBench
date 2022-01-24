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
typedef  int /*<<< orphan*/  u8 ;
struct fmdev {int /*<<< orphan*/  flag; TYPE_1__* radio_dev; } ;
struct firmware {int size; scalar_t__ data; } ;
struct bts_header {scalar_t__ magic; } ;
struct bts_action_delay {int /*<<< orphan*/  msec; } ;
struct bts_action {int type; scalar_t__ size; scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  ACTION_DELAY 129 
#define  ACTION_SEND_COMMAND 128 
 int EINVAL ; 
 int /*<<< orphan*/  FM_FW_DW_INPROGRESS ; 
 scalar_t__ FM_FW_FILE_HEADER_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct fmdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct firmware const*) ; 
 int FUNC6 (struct firmware const**,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct fmdev *fmdev, const u8 *fw_name)
{
	const struct firmware *fw_entry;
	struct bts_header *fw_header;
	struct bts_action *action;
	struct bts_action_delay *delay;
	u8 *fw_data;
	int ret, fw_len, cmd_cnt;

	cmd_cnt = 0;
	FUNC7(FM_FW_DW_INPROGRESS, &fmdev->flag);

	ret = FUNC6(&fw_entry, fw_name,
				&fmdev->radio_dev->dev);
	if (ret < 0) {
		FUNC3("Unable to read firmware(%s) content\n", fw_name);
		return ret;
	}
	FUNC2("Firmware(%s) length : %zu bytes\n", fw_name, fw_entry->size);

	fw_data = (void *)fw_entry->data;
	fw_len = fw_entry->size;

	fw_header = (struct bts_header *)fw_data;
	if (fw_header->magic != FM_FW_FILE_HEADER_MAGIC) {
		FUNC3("%s not a legal TI firmware file\n", fw_name);
		ret = -EINVAL;
		goto rel_fw;
	}
	FUNC2("FW(%s) magic number : 0x%x\n", fw_name, fw_header->magic);

	/* Skip file header info , we already verified it */
	fw_data += sizeof(struct bts_header);
	fw_len -= sizeof(struct bts_header);

	while (fw_data && fw_len > 0) {
		action = (struct bts_action *)fw_data;

		switch (action->type) {
		case ACTION_SEND_COMMAND:	/* Send */
			ret = FUNC1(fmdev, 0, 0, action->data,
					   action->size, NULL, NULL);
			if (ret)
				goto rel_fw;

			cmd_cnt++;
			break;

		case ACTION_DELAY:	/* Delay */
			delay = (struct bts_action_delay *)action->data;
			FUNC4(delay->msec);
			break;
		}

		fw_data += (sizeof(struct bts_action) + (action->size));
		fw_len -= (sizeof(struct bts_action) + (action->size));
	}
	FUNC2("Firmware commands(%d) loaded to chip\n", cmd_cnt);
rel_fw:
	FUNC5(fw_entry);
	FUNC0(FM_FW_DW_INPROGRESS, &fmdev->flag);

	return ret;
}