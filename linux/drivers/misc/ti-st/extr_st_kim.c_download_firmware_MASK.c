#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct kim_data_s {TYPE_2__* fw_entry; int /*<<< orphan*/  kim_rcvd; int /*<<< orphan*/  core_data; TYPE_1__* kim_pdev; } ;
struct hci_command {int opcode; } ;
struct bts_header {int dummy; } ;
struct bts_action_send {int /*<<< orphan*/  data; } ;
struct bts_action_delay {int msec; } ;
struct bts_action {int size; int type; unsigned char* data; } ;
struct TYPE_5__ {long size; int /*<<< orphan*/ * data; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  ACTION_DELAY 130 
#define  ACTION_SEND_COMMAND 129 
#define  ACTION_WAIT_EVENT 128 
 int /*<<< orphan*/  CMD_RESP_TIME ; 
 int /*<<< orphan*/  CMD_WR_TIME ; 
 long EINVAL ; 
 long EIO ; 
 long ERESTARTSYS ; 
 long ETIMEDOUT ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 long FUNC6 (struct kim_data_s*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 long FUNC9 (TYPE_2__**,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char**,long*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 long FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC15 (int) ; 
 long FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static long FUNC17(struct kim_data_s *kim_gdata)
{
	long err = 0;
	long len = 0;
	unsigned char *ptr = NULL;
	unsigned char *action_ptr = NULL;
	unsigned char bts_scr_name[40] = { 0 };	/* 40 char long bts scr name? */
	int wr_room_space;
	int cmd_size;
	unsigned long timeout;

	err = FUNC6(kim_gdata, bts_scr_name);
	if (err != 0) {
		FUNC3("kim: failed to read local ver");
		return err;
	}
	err =
	    FUNC9(&kim_gdata->fw_entry, bts_scr_name,
			     &kim_gdata->kim_pdev->dev);
	if (FUNC15((err != 0) || (kim_gdata->fw_entry->data == NULL) ||
		     (kim_gdata->fw_entry->size == 0))) {
		FUNC3(" request_firmware failed(errno %ld) for %s", err,
			   bts_scr_name);
		return -EINVAL;
	}
	ptr = (void *)kim_gdata->fw_entry->data;
	len = kim_gdata->fw_entry->size;
	/* bts_header to remove out magic number and
	 * version
	 */
	ptr += sizeof(struct bts_header);
	len -= sizeof(struct bts_header);

	while (len > 0 && ptr) {
		FUNC2(" action size %d, type %d ",
			   ((struct bts_action *)ptr)->size,
			   ((struct bts_action *)ptr)->type);

		switch (((struct bts_action *)ptr)->type) {
		case ACTION_SEND_COMMAND:	/* action send */
			FUNC2("S");
			action_ptr = &(((struct bts_action *)ptr)->data[0]);
			if (FUNC15
			    (((struct hci_command *)action_ptr)->opcode ==
			     0xFF36)) {
				/* ignore remote change
				 * baud rate HCI VS command */
				FUNC5("change remote baud"
				    " rate command in firmware");
				FUNC10(&ptr, &len);
				break;
			}
			/*
			 * Make sure we have enough free space in uart
			 * tx buffer to write current firmware command
			 */
			cmd_size = ((struct bts_action *)ptr)->size;
			timeout = jiffies + FUNC1(CMD_WR_TIME);
			do {
				wr_room_space =
					FUNC11(kim_gdata->core_data);
				if (wr_room_space < 0) {
					FUNC3("Unable to get free "
							"space info from uart tx buffer");
					FUNC8(kim_gdata->fw_entry);
					return wr_room_space;
				}
				FUNC0(1); /* wait 1ms before checking room */
			} while ((wr_room_space < cmd_size) &&
					FUNC14(jiffies, timeout));

			/* Timeout happened ? */
			if (FUNC13(jiffies, timeout)) {
				FUNC3("Timeout while waiting for free "
						"free space in uart tx buffer");
				FUNC8(kim_gdata->fw_entry);
				return -ETIMEDOUT;
			}
			/* reinit completion before sending for the
			 * relevant wait
			 */
			FUNC7(&kim_gdata->kim_rcvd);

			/*
			 * Free space found in uart buffer, call st_int_write
			 * to send current firmware command to the uart tx
			 * buffer.
			 */
			err = FUNC12(kim_gdata->core_data,
			((struct bts_action_send *)action_ptr)->data,
					   ((struct bts_action *)ptr)->size);
			if (FUNC15(err < 0)) {
				FUNC8(kim_gdata->fw_entry);
				return err;
			}
			/*
			 * Check number of bytes written to the uart tx buffer
			 * and requested command write size
			 */
			if (err != cmd_size) {
				FUNC3("Number of bytes written to uart "
						"tx buffer are not matching with "
						"requested cmd write size");
				FUNC8(kim_gdata->fw_entry);
				return -EIO;
			}
			break;
		case ACTION_WAIT_EVENT:  /* wait */
			FUNC2("W");
			err = FUNC16(
					&kim_gdata->kim_rcvd,
					FUNC1(CMD_RESP_TIME));
			if (err <= 0) {
				FUNC3("response timeout/signaled during fw download ");
				/* timed out */
				FUNC8(kim_gdata->fw_entry);
				return err ? -ERESTARTSYS : -ETIMEDOUT;
			}
			FUNC7(&kim_gdata->kim_rcvd);
			break;
		case ACTION_DELAY:	/* sleep */
			FUNC4("sleep command in scr");
			action_ptr = &(((struct bts_action *)ptr)->data[0]);
			FUNC0(((struct bts_action_delay *)action_ptr)->msec);
			break;
		}
		len =
		    len - (sizeof(struct bts_action) +
			   ((struct bts_action *)ptr)->size);
		ptr =
		    ptr + sizeof(struct bts_action) +
		    ((struct bts_action *)ptr)->size;
	}
	/* fw download complete */
	FUNC8(kim_gdata->fw_entry);
	return 0;
}