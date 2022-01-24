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
struct fw_vi_enable_cmd {int /*<<< orphan*/  blinkdur; void* ien_to_len16; void* op_to_viid; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 int FW_CMD_EXEC_F ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FW_CMD_REQUEST_F ; 
 int FUNC1 (struct fw_vi_enable_cmd) ; 
 int /*<<< orphan*/  FW_VI_ENABLE_CMD ; 
 int FW_VI_ENABLE_CMD_LED_F ; 
 int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct fw_vi_enable_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct adapter*,unsigned int,struct fw_vi_enable_cmd*,int,int /*<<< orphan*/ *) ; 

int FUNC7(struct adapter *adap, unsigned int mbox, unsigned int viid,
		     unsigned int nblinks)
{
	struct fw_vi_enable_cmd c;

	FUNC5(&c, 0, sizeof(c));
	c.op_to_viid = FUNC4(FUNC0(FW_VI_ENABLE_CMD) |
				   FW_CMD_REQUEST_F | FW_CMD_EXEC_F |
				   FUNC2(viid));
	c.ien_to_len16 = FUNC4(FW_VI_ENABLE_CMD_LED_F | FUNC1(c));
	c.blinkdur = FUNC3(nblinks);
	return FUNC6(adap, mbox, &c, sizeof(c), NULL);
}