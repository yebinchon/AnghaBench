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
struct TYPE_4__ {void* defaultq_to_udpen; } ;
struct TYPE_3__ {TYPE_2__ basicvirtual; } ;
struct fw_rss_vi_config_cmd {TYPE_1__ u; void* retval_len16; void* op_to_viid; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FW_CMD_REQUEST_F ; 
 unsigned int FW_CMD_WRITE_F ; 
 unsigned int FUNC1 (struct fw_rss_vi_config_cmd) ; 
 int /*<<< orphan*/  FW_RSS_VI_CONFIG_CMD ; 
 unsigned int FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (unsigned int) ; 
 void* FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct fw_rss_vi_config_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct adapter*,int,struct fw_rss_vi_config_cmd*,int,int /*<<< orphan*/ *) ; 

int FUNC7(struct adapter *adapter, int mbox, unsigned int viid,
		     unsigned int flags, unsigned int defq)
{
	struct fw_rss_vi_config_cmd c;

	FUNC5(&c, 0, sizeof(c));
	c.op_to_viid = FUNC4(FUNC0(FW_RSS_VI_CONFIG_CMD) |
				   FW_CMD_REQUEST_F | FW_CMD_WRITE_F |
				   FUNC3(viid));
	c.retval_len16 = FUNC4(FUNC1(c));
	c.u.basicvirtual.defaultq_to_udpen = FUNC4(flags |
					FUNC2(defq));
	return FUNC6(adapter, mbox, &c, sizeof(c), NULL);
}