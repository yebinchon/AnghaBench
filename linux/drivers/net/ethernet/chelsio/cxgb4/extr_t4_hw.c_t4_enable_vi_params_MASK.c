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
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 int FW_CMD_EXEC_F ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FW_CMD_REQUEST_F ; 
 int FUNC1 (struct fw_vi_enable_cmd) ; 
 int /*<<< orphan*/  FW_VI_ENABLE_CMD ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (unsigned int) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct fw_vi_enable_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct adapter*,unsigned int,struct fw_vi_enable_cmd*,int,int /*<<< orphan*/ *) ; 

int FUNC9(struct adapter *adap, unsigned int mbox,
			unsigned int viid, bool rx_en, bool tx_en, bool dcb_en)
{
	struct fw_vi_enable_cmd c;

	FUNC7(&c, 0, sizeof(c));
	c.op_to_viid = FUNC6(FUNC0(FW_VI_ENABLE_CMD) |
				   FW_CMD_REQUEST_F | FW_CMD_EXEC_F |
				   FUNC5(viid));
	c.ien_to_len16 = FUNC6(FUNC4(rx_en) |
				     FUNC3(tx_en) |
				     FUNC2(dcb_en) |
				     FUNC1(c));
	return FUNC8(adap, mbox, &c, sizeof(c), NULL);
}