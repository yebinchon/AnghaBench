#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void* synmapen_to_hashtoeplitz; void* mode_pkd; } ;
struct TYPE_4__ {void* mode_pkd; } ;
struct TYPE_6__ {TYPE_2__ basicvirtual; TYPE_1__ manual; } ;
struct fw_rss_glb_config_cmd {TYPE_3__ u; void* retval_len16; void* op_to_write; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FW_CMD_REQUEST_F ; 
 unsigned int FW_CMD_WRITE_F ; 
 unsigned int FUNC1 (struct fw_rss_glb_config_cmd) ; 
 int /*<<< orphan*/  FW_RSS_GLB_CONFIG_CMD ; 
 unsigned int FW_RSS_GLB_CONFIG_CMD_MODE_BASICVIRTUAL ; 
 unsigned int FW_RSS_GLB_CONFIG_CMD_MODE_MANUAL ; 
 unsigned int FUNC2 (unsigned int) ; 
 void* FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct fw_rss_glb_config_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct adapter*,int,struct fw_rss_glb_config_cmd*,int,int /*<<< orphan*/ *) ; 

int FUNC6(struct adapter *adapter, int mbox, unsigned int mode,
		       unsigned int flags)
{
	struct fw_rss_glb_config_cmd c;

	FUNC4(&c, 0, sizeof(c));
	c.op_to_write = FUNC3(FUNC0(FW_RSS_GLB_CONFIG_CMD) |
				    FW_CMD_REQUEST_F | FW_CMD_WRITE_F);
	c.retval_len16 = FUNC3(FUNC1(c));
	if (mode == FW_RSS_GLB_CONFIG_CMD_MODE_MANUAL) {
		c.u.manual.mode_pkd =
			FUNC3(FUNC2(mode));
	} else if (mode == FW_RSS_GLB_CONFIG_CMD_MODE_BASICVIRTUAL) {
		c.u.basicvirtual.mode_pkd =
			FUNC3(FUNC2(mode));
		c.u.basicvirtual.synmapen_to_hashtoeplitz = FUNC3(flags);
	} else
		return -EINVAL;
	return FUNC5(adapter, mbox, &c, sizeof(c), NULL);
}