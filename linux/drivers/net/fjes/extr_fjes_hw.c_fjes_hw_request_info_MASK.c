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
struct TYPE_4__ {scalar_t__ length; int code; } ;
union fjes_device_command_res {TYPE_2__ info; } ;
union fjes_device_command_req {TYPE_2__ info; } ;
struct TYPE_3__ {int /*<<< orphan*/ * max_epid; int /*<<< orphan*/  res_buf_size; int /*<<< orphan*/  req_buf_size; union fjes_device_command_res* res_buf; union fjes_device_command_res* req_buf; } ;
struct fjes_hw {TYPE_1__ hw_info; } ;
typedef  enum fjes_dev_command_response_e { ____Placeholder_fjes_dev_command_response_e } fjes_dev_command_response_e ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMSG ; 
 int EPERM ; 
 int /*<<< orphan*/  FJES_CMD_REQ_INFO ; 
#define  FJES_CMD_REQ_RES_CODE_NORMAL 132 
#define  FJES_CMD_STATUS_ERROR_PARAM 131 
#define  FJES_CMD_STATUS_ERROR_STATUS 130 
 int FJES_CMD_STATUS_NORMAL ; 
#define  FJES_CMD_STATUS_TIMEOUT 129 
#define  FJES_CMD_STATUS_UNKNOWN 128 
 scalar_t__ FJES_DEV_COMMAND_INFO_REQ_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct fjes_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (union fjes_device_command_res*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fjes_hw*,union fjes_device_command_res*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(struct fjes_hw *hw)
{
	union fjes_device_command_req *req_buf = hw->hw_info.req_buf;
	union fjes_device_command_res *res_buf = hw->hw_info.res_buf;
	enum fjes_dev_command_response_e ret;
	int result;

	FUNC2(req_buf, 0, hw->hw_info.req_buf_size);
	FUNC2(res_buf, 0, hw->hw_info.res_buf_size);

	req_buf->info.length = FJES_DEV_COMMAND_INFO_REQ_LEN;

	res_buf->info.length = 0;
	res_buf->info.code = 0;

	ret = FUNC1(hw, FJES_CMD_REQ_INFO);
	FUNC3(hw, res_buf);

	result = 0;

	if (FUNC0((*hw->hw_info.max_epid)) !=
		res_buf->info.length) {
		FUNC4("Invalid res_buf");
		result = -ENOMSG;
	} else if (ret == FJES_CMD_STATUS_NORMAL) {
		switch (res_buf->info.code) {
		case FJES_CMD_REQ_RES_CODE_NORMAL:
			result = 0;
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
			FUNC4("Timeout");
			result = -EBUSY;
			break;
		case FJES_CMD_STATUS_ERROR_PARAM:
			result = -EPERM;
			break;
		case FJES_CMD_STATUS_ERROR_STATUS:
			result = -EPERM;
			break;
		default:
			result = -EPERM;
			break;
		}
	}

	return result;
}