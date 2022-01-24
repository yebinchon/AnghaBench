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
struct fw_vi_enable_cmd {void* ien_to_len16; void* op_to_viid; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int FW_CMD_EXEC_F ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FW_CMD_REQUEST_F ; 
 int FUNC1 (struct fw_vi_enable_cmd) ; 
 int /*<<< orphan*/  FW_VI_ENABLE_CMD ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (unsigned int) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct fw_vi_enable_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct adapter*,struct fw_vi_enable_cmd*,int,int /*<<< orphan*/ *) ; 

int FUNC8(struct adapter *adapter, unsigned int viid,
		   bool rx_en, bool tx_en)
{
	struct fw_vi_enable_cmd cmd;

	FUNC6(&cmd, 0, sizeof(cmd));
	cmd.op_to_viid = FUNC5(FUNC0(FW_VI_ENABLE_CMD) |
				     FW_CMD_REQUEST_F |
				     FW_CMD_EXEC_F |
				     FUNC4(viid));
	cmd.ien_to_len16 = FUNC5(FUNC3(rx_en) |
				       FUNC2(tx_en) |
				       FUNC1(cmd));
	return FUNC7(adapter, &cmd, sizeof(cmd), NULL);
}