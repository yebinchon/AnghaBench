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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct iwl_host_cmd {int* len; int flags; int /*<<< orphan*/ * data; void* id; } ;
struct iwl_fw_runtime {int /*<<< orphan*/  ops_ctx; TYPE_1__* ops; } ;
struct hcmd_write_data {int /*<<< orphan*/  data; int /*<<< orphan*/  length; int /*<<< orphan*/  flags; int /*<<< orphan*/  cmd_id; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int (* send_hcmd ) (int /*<<< orphan*/ ,struct iwl_host_cmd*) ;int /*<<< orphan*/  (* fw_running ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int CMD_WANT_SKB ; 
 size_t EINVAL ; 
 size_t EIO ; 
 size_t ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_fw_runtime*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_host_cmd*) ; 
 int /*<<< orphan*/  FUNC5 (struct hcmd_write_data*) ; 
 struct hcmd_write_data* FUNC6 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct iwl_host_cmd*) ; 

__attribute__((used)) static ssize_t FUNC9(struct iwl_fw_runtime *fwrt, char *buf,
					 size_t count)
{
	size_t header_size = (sizeof(u32) * 2 + sizeof(u16)) * 2;
	size_t data_size = (count - 1) / 2;
	int ret;
	struct hcmd_write_data *data;
	struct iwl_host_cmd hcmd = {
		.len = 0, 
		.data = NULL, 
	};

	if (fwrt->ops && fwrt->ops->fw_running &&
	    !fwrt->ops->fw_running(fwrt->ops_ctx))
		return -EIO;

	if (count < header_size + 1 || count > 1024 * 4)
		return -EINVAL;

	data = FUNC6(data_size, GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	ret = FUNC3((u8 *)data, buf, data_size);
	if (ret)
		goto out;

	hcmd.id = FUNC2(data->cmd_id);
	hcmd.flags = FUNC2(data->flags);
	hcmd.len[0] = FUNC1(data->length);
	hcmd.data[0] = data->data;

	if (count != header_size + hcmd.len[0] * 2 + 1) {
		FUNC0(fwrt,
			"host command data size does not match header length\n");
		ret = -EINVAL;
		goto out;
	}

	if (fwrt->ops && fwrt->ops->send_hcmd)
		ret = fwrt->ops->send_hcmd(fwrt->ops_ctx, &hcmd);
	else
		ret = -EPERM;

	if (ret < 0)
		goto out;

	if (hcmd.flags & CMD_WANT_SKB)
		FUNC4(&hcmd);
out:
	FUNC5(data);
	return ret ?: count;
}