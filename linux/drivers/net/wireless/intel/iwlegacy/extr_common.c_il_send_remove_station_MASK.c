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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_5__ {int status; } ;
struct TYPE_6__ {TYPE_2__ rem_sta; } ;
struct TYPE_4__ {int flags; } ;
struct il_rx_pkt {TYPE_3__ u; TYPE_1__ hdr; } ;
struct il_rem_sta_cmd {int num_sta; int /*<<< orphan*/  addr; } ;
struct il_priv {int /*<<< orphan*/  sta_lock; } ;
struct il_host_cmd {int len; scalar_t__ reply_page; int /*<<< orphan*/  flags; struct il_rem_sta_cmd* data; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  rm_sta_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SYNC ; 
 int /*<<< orphan*/  CMD_WANT_SKB ; 
 int /*<<< orphan*/  C_REM_STA ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EIO ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int IL_CMD_FAILED_MSK ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
#define  REM_STA_SUCCESS_MSK 128 
 int /*<<< orphan*/  FUNC2 (struct il_priv*,scalar_t__) ; 
 int FUNC3 (struct il_priv*,struct il_host_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (struct il_priv*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct il_rem_sta_cmd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC9(struct il_priv *il, const u8 * addr, int sta_id,
		       bool temporary)
{
	struct il_rx_pkt *pkt;
	int ret;

	unsigned long flags_spin;
	struct il_rem_sta_cmd rm_sta_cmd;

	struct il_host_cmd cmd = {
		.id = C_REM_STA,
		.len = sizeof(struct il_rem_sta_cmd),
		.flags = CMD_SYNC,
		.data = &rm_sta_cmd,
	};

	FUNC6(&rm_sta_cmd, 0, sizeof(rm_sta_cmd));
	rm_sta_cmd.num_sta = 1;
	FUNC5(&rm_sta_cmd.addr, addr, ETH_ALEN);

	cmd.flags |= CMD_WANT_SKB;

	ret = FUNC3(il, &cmd);

	if (ret)
		return ret;

	pkt = (struct il_rx_pkt *)cmd.reply_page;
	if (pkt->hdr.flags & IL_CMD_FAILED_MSK) {
		FUNC1("Bad return from C_REM_STA (0x%08X)\n", pkt->hdr.flags);
		ret = -EIO;
	}

	if (!ret) {
		switch (pkt->u.rem_sta.status) {
		case REM_STA_SUCCESS_MSK:
			if (!temporary) {
				FUNC7(&il->sta_lock, flags_spin);
				FUNC4(il, sta_id);
				FUNC8(&il->sta_lock,
						       flags_spin);
			}
			FUNC0("C_REM_STA PASSED\n");
			break;
		default:
			ret = -EIO;
			FUNC1("C_REM_STA failed\n");
			break;
		}
	}
	FUNC2(il, cmd.reply_page);

	return ret;
}