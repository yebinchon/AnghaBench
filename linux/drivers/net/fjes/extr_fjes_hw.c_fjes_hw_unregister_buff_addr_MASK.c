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
struct TYPE_3__ {scalar_t__ length; int epid; int code; } ;
union fjes_device_command_res {TYPE_1__ unshare_buffer; } ;
union fjes_device_command_req {TYPE_1__ unshare_buffer; } ;
struct TYPE_4__ {int /*<<< orphan*/  buffer_share_bit; int /*<<< orphan*/  res_buf_size; int /*<<< orphan*/  req_buf_size; struct fjes_device_shared_info* share; union fjes_device_command_res* res_buf; union fjes_device_command_res* req_buf; } ;
struct fjes_hw {int my_epid; TYPE_2__ hw_info; int /*<<< orphan*/  base; } ;
struct fjes_device_shared_info {int dummy; } ;
typedef  enum fjes_dev_command_response_e { ____Placeholder_fjes_dev_command_response_e } fjes_dev_command_response_e ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMSG ; 
 int EPERM ; 
#define  FJES_CMD_REQ_RES_CODE_BUSY 133 
#define  FJES_CMD_REQ_RES_CODE_NORMAL 132 
 int /*<<< orphan*/  FJES_CMD_REQ_UNSHARE_BUFFER ; 
#define  FJES_CMD_STATUS_ERROR_PARAM 131 
#define  FJES_CMD_STATUS_ERROR_STATUS 130 
 int FJES_CMD_STATUS_NORMAL ; 
#define  FJES_CMD_STATUS_TIMEOUT 129 
#define  FJES_CMD_STATUS_UNKNOWN 128 
 int FJES_COMMAND_REQ_BUFF_TIMEOUT ; 
 scalar_t__ FJES_DEV_COMMAND_UNSHARE_BUFFER_REQ_LEN ; 
 scalar_t__ FJES_DEV_COMMAND_UNSHARE_BUFFER_RES_LEN ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct fjes_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (union fjes_device_command_res*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (union fjes_device_command_res*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (union fjes_device_command_res*) ; 

int FUNC8(struct fjes_hw *hw, int dest_epid)
{
	union fjes_device_command_req *req_buf = hw->hw_info.req_buf;
	union fjes_device_command_res *res_buf = hw->hw_info.res_buf;
	struct fjes_device_shared_info *share = hw->hw_info.share;
	enum fjes_dev_command_response_e ret;
	int timeout;
	int result;

	if (!hw->base)
		return -EPERM;

	if (!req_buf || !res_buf || !share)
		return -EPERM;

	if (!FUNC4(dest_epid, &hw->hw_info.buffer_share_bit))
		return 0;

	FUNC2(req_buf, 0, hw->hw_info.req_buf_size);
	FUNC2(res_buf, 0, hw->hw_info.res_buf_size);

	req_buf->unshare_buffer.length =
			FJES_DEV_COMMAND_UNSHARE_BUFFER_REQ_LEN;
	req_buf->unshare_buffer.epid = dest_epid;

	res_buf->unshare_buffer.length = 0;
	res_buf->unshare_buffer.code = 0;

	FUNC7(req_buf);
	ret = FUNC1(hw, FJES_CMD_REQ_UNSHARE_BUFFER);

	timeout = FJES_COMMAND_REQ_BUFF_TIMEOUT * 1000;
	while ((ret == FJES_CMD_STATUS_NORMAL) &&
	       (res_buf->unshare_buffer.length ==
		FJES_DEV_COMMAND_UNSHARE_BUFFER_RES_LEN) &&
	       (res_buf->unshare_buffer.code ==
		FJES_CMD_REQ_RES_CODE_BUSY) &&
	       (timeout > 0)) {
		FUNC3(200 + hw->my_epid * 20);
		timeout -= (200 + hw->my_epid * 20);

		res_buf->unshare_buffer.length = 0;
		res_buf->unshare_buffer.code = 0;

		ret =
		FUNC1(hw, FJES_CMD_REQ_UNSHARE_BUFFER);
	}

	result = 0;

	FUNC5(res_buf, timeout);

	if (res_buf->unshare_buffer.length !=
			FJES_DEV_COMMAND_UNSHARE_BUFFER_RES_LEN) {
		FUNC6("Invalid res_buf");
		result = -ENOMSG;
	} else if (ret == FJES_CMD_STATUS_NORMAL) {
		switch (res_buf->unshare_buffer.code) {
		case FJES_CMD_REQ_RES_CODE_NORMAL:
			result = 0;
			FUNC0(dest_epid, &hw->hw_info.buffer_share_bit);
			break;
		case FJES_CMD_REQ_RES_CODE_BUSY:
			FUNC6("Busy Timeout");
			result = -EBUSY;
			break;
		default:
			result = -EPERM;
			break;
		}
	} else {
		switch (ret) {
		case FJES_CMD_STATUS_UNKNOWN:
			result = -EPERM;
			break;
		case FJES_CMD_STATUS_TIMEOUT:
			FUNC6("Timeout");
			result = -EBUSY;
			break;
		case FJES_CMD_STATUS_ERROR_PARAM:
		case FJES_CMD_STATUS_ERROR_STATUS:
		default:
			result = -EPERM;
			break;
		}
	}

	return result;
}