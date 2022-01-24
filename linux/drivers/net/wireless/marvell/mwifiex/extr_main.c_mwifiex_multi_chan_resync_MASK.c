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
typedef  int u16 ;
struct usb_card_rec {int mc_resync_flag; TYPE_1__* port; } ;
struct mwifiex_private {int dummy; } ;
struct mwifiex_adapter {struct usb_card_rec* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_data_urb_pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  HostCmd_ACT_GEN_SET ; 
 int /*<<< orphan*/  HostCmd_CMD_RECONFIGURE_TX_BUFF ; 
 int /*<<< orphan*/  MWIFIEX_BSS_ROLE_ANY ; 
 int MWIFIEX_TX_DATA_PORT ; 
 int /*<<< orphan*/  WARN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*) ; 
 struct mwifiex_private* FUNC2 (struct mwifiex_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mwifiex_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 

void FUNC4(struct mwifiex_adapter *adapter)
{
	struct usb_card_rec *card = adapter->card;
	struct mwifiex_private *priv;
	u16 tx_buf_size;
	int i, ret;

	card->mc_resync_flag = true;
	for (i = 0; i < MWIFIEX_TX_DATA_PORT; i++) {
		if (FUNC0(&card->port[i].tx_data_urb_pending)) {
			FUNC1(adapter, WARN, "pending data urb in sys\n");
			return;
		}
	}

	card->mc_resync_flag = false;
	tx_buf_size = 0xffff;
	priv = FUNC2(adapter, MWIFIEX_BSS_ROLE_ANY);
	ret = FUNC3(priv, HostCmd_CMD_RECONFIGURE_TX_BUFF,
			       HostCmd_ACT_GEN_SET, 0, &tx_buf_size, false);
	if (ret)
		FUNC1(adapter, ERROR,
			    "send reconfig tx buf size cmd err\n");
}