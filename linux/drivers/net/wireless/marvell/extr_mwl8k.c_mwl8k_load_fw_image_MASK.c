#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct mwl8k_priv {int dummy; } ;
struct mwl8k_cmd_pkt {void* length; int /*<<< orphan*/  payload; scalar_t__ result; scalar_t__ macid; scalar_t__ seq_num; void* code; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MWL8K_CMD_CODE_DNLD ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mwl8k_cmd_pkt*) ; 
 struct mwl8k_cmd_pkt* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int FUNC4 (struct mwl8k_priv*,struct mwl8k_cmd_pkt*,int) ; 

__attribute__((used)) static int FUNC5(struct mwl8k_priv *priv,
				const u8 *data, size_t length)
{
	struct mwl8k_cmd_pkt *cmd;
	int done;
	int rc = 0;

	cmd = FUNC2(sizeof(*cmd) + 256, GFP_KERNEL);
	if (cmd == NULL)
		return -ENOMEM;

	cmd->code = FUNC0(MWL8K_CMD_CODE_DNLD);
	cmd->seq_num = 0;
	cmd->macid = 0;
	cmd->result = 0;

	done = 0;
	while (length) {
		int block_size = length > 256 ? 256 : length;

		FUNC3(cmd->payload, data + done, block_size);
		cmd->length = FUNC0(block_size);

		rc = FUNC4(priv, cmd,
						sizeof(*cmd) + block_size);
		if (rc)
			break;

		done += block_size;
		length -= block_size;
	}

	if (!rc) {
		cmd->length = 0;
		rc = FUNC4(priv, cmd, sizeof(*cmd));
	}

	FUNC1(cmd);

	return rc;
}