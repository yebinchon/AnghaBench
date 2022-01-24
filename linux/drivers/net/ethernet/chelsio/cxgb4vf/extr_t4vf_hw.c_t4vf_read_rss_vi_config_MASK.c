#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int ip6fourtupen; int ip6twotupen; int ip4fourtupen; int ip4twotupen; int udpen; int /*<<< orphan*/  defaultq; } ;
union rss_vi_config {TYPE_5__ basicvirtual; } ;
typedef  int u32 ;
struct TYPE_8__ {int /*<<< orphan*/  defaultq_to_udpen; } ;
struct TYPE_9__ {TYPE_3__ basicvirtual; } ;
struct fw_rss_vi_config_cmd {TYPE_4__ u; void* retval_len16; void* op_to_viid; } ;
struct TYPE_6__ {int mode; } ;
struct TYPE_7__ {TYPE_1__ rss; } ;
struct adapter {TYPE_2__ params; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FW_CMD_READ_F ; 
 int FW_CMD_REQUEST_F ; 
 int FUNC1 (struct fw_rss_vi_config_cmd) ; 
#define  FW_RSS_GLB_CONFIG_CMD_MODE_BASICVIRTUAL 128 
 int /*<<< orphan*/  FW_RSS_VI_CONFIG_CMD ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FW_RSS_VI_CONFIG_CMD_IP4FOURTUPEN_F ; 
 int FW_RSS_VI_CONFIG_CMD_IP4TWOTUPEN_F ; 
 int FW_RSS_VI_CONFIG_CMD_IP6FOURTUPEN_F ; 
 int FW_RSS_VI_CONFIG_CMD_IP6TWOTUPEN_F ; 
 int FW_RSS_VI_CONFIG_CMD_UDPEN_F ; 
 int FUNC3 (unsigned int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct fw_rss_vi_config_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct adapter*,struct fw_rss_vi_config_cmd*,int,struct fw_rss_vi_config_cmd*) ; 

int FUNC8(struct adapter *adapter, unsigned int viid,
			    union rss_vi_config *config)
{
	struct fw_rss_vi_config_cmd cmd, rpl;
	int v;

	FUNC6(&cmd, 0, sizeof(cmd));
	cmd.op_to_viid = FUNC5(FUNC0(FW_RSS_VI_CONFIG_CMD) |
				     FW_CMD_REQUEST_F |
				     FW_CMD_READ_F |
				     FUNC3(viid));
	cmd.retval_len16 = FUNC5(FUNC1(cmd));
	v = FUNC7(adapter, &cmd, sizeof(cmd), &rpl);
	if (v)
		return v;

	switch (adapter->params.rss.mode) {
	case FW_RSS_GLB_CONFIG_CMD_MODE_BASICVIRTUAL: {
		u32 word = FUNC4(rpl.u.basicvirtual.defaultq_to_udpen);

		config->basicvirtual.ip6fourtupen =
			((word & FW_RSS_VI_CONFIG_CMD_IP6FOURTUPEN_F) != 0);
		config->basicvirtual.ip6twotupen =
			((word & FW_RSS_VI_CONFIG_CMD_IP6TWOTUPEN_F) != 0);
		config->basicvirtual.ip4fourtupen =
			((word & FW_RSS_VI_CONFIG_CMD_IP4FOURTUPEN_F) != 0);
		config->basicvirtual.ip4twotupen =
			((word & FW_RSS_VI_CONFIG_CMD_IP4TWOTUPEN_F) != 0);
		config->basicvirtual.udpen =
			((word & FW_RSS_VI_CONFIG_CMD_UDPEN_F) != 0);
		config->basicvirtual.defaultq =
			FUNC2(word);
		break;
	}

	default:
		return -EINVAL;
	}

	return 0;
}