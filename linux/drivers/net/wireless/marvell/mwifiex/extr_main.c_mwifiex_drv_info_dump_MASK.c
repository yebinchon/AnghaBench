#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct usb_card_rec {int /*<<< orphan*/  rx_data_urb_pending; int /*<<< orphan*/  rx_cmd_urb_pending; TYPE_2__* port; int /*<<< orphan*/  tx_cmd_urb_pending; } ;
struct sdio_mmc_card {int mp_rd_bitmap; int curr_rd_port; int mp_wr_bitmap; int curr_wr_port; } ;
struct netdev_queue {int dummy; } ;
struct mwifiex_private {int num_tx_timeout; TYPE_3__* netdev; int /*<<< orphan*/  media_connected; int /*<<< orphan*/ * wmm_tx_pending; } ;
struct mwifiex_debug_info {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* reg_dump ) (struct mwifiex_adapter*,char*) ;} ;
struct mwifiex_adapter {char* devdump_data; scalar_t__ iface_type; int priv_num; int devdump_len; struct mwifiex_private** priv; TYPE_1__ if_ops; scalar_t__ card; int /*<<< orphan*/  rx_pending; int /*<<< orphan*/  tx_pending; } ;
typedef  int /*<<< orphan*/  drv_version ;
struct TYPE_7__ {char* name; int num_tx_queues; } ;
struct TYPE_6__ {int /*<<< orphan*/  tx_data_urb_pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MSG ; 
 scalar_t__ MWIFIEX_PCIE ; 
 scalar_t__ MWIFIEX_SDIO ; 
 scalar_t__ MWIFIEX_USB ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_debug_info*) ; 
 struct mwifiex_debug_info* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct mwifiex_private*,char*,struct mwifiex_debug_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct mwifiex_adapter*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mwifiex_private*,struct mwifiex_debug_info*) ; 
 struct netdev_queue* FUNC7 (TYPE_3__*,int) ; 
 scalar_t__ FUNC8 (TYPE_3__*) ; 
 scalar_t__ FUNC9 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (struct mwifiex_adapter*,char*) ; 

void FUNC14(struct mwifiex_adapter *adapter)
{
	char *p;
	char drv_version[64];
	struct usb_card_rec *cardp;
	struct sdio_mmc_card *sdio_card;
	struct mwifiex_private *priv;
	int i, idx;
	struct netdev_queue *txq;
	struct mwifiex_debug_info *debug_info;

	FUNC3(adapter, MSG, "===mwifiex driverinfo dump start===\n");

	p = adapter->devdump_data;
	FUNC11(p, "========Start dump driverinfo========\n");
	p += FUNC12("========Start dump driverinfo========\n");
	p += FUNC10(p, "driver_name = " "\"mwifiex\"\n");

	FUNC5(adapter, drv_version,
				       sizeof(drv_version) - 1);
	p += FUNC10(p, "driver_version = %s\n", drv_version);

	if (adapter->iface_type == MWIFIEX_USB) {
		cardp = (struct usb_card_rec *)adapter->card;
		p += FUNC10(p, "tx_cmd_urb_pending = %d\n",
			     FUNC0(&cardp->tx_cmd_urb_pending));
		p += FUNC10(p, "tx_data_urb_pending_port_0 = %d\n",
			     FUNC0(&cardp->port[0].tx_data_urb_pending));
		p += FUNC10(p, "tx_data_urb_pending_port_1 = %d\n",
			     FUNC0(&cardp->port[1].tx_data_urb_pending));
		p += FUNC10(p, "rx_cmd_urb_pending = %d\n",
			     FUNC0(&cardp->rx_cmd_urb_pending));
		p += FUNC10(p, "rx_data_urb_pending = %d\n",
			     FUNC0(&cardp->rx_data_urb_pending));
	}

	p += FUNC10(p, "tx_pending = %d\n",
		     FUNC0(&adapter->tx_pending));
	p += FUNC10(p, "rx_pending = %d\n",
		     FUNC0(&adapter->rx_pending));

	if (adapter->iface_type == MWIFIEX_SDIO) {
		sdio_card = (struct sdio_mmc_card *)adapter->card;
		p += FUNC10(p, "\nmp_rd_bitmap=0x%x curr_rd_port=0x%x\n",
			     sdio_card->mp_rd_bitmap, sdio_card->curr_rd_port);
		p += FUNC10(p, "mp_wr_bitmap=0x%x curr_wr_port=0x%x\n",
			     sdio_card->mp_wr_bitmap, sdio_card->curr_wr_port);
	}

	for (i = 0; i < adapter->priv_num; i++) {
		if (!adapter->priv[i] || !adapter->priv[i]->netdev)
			continue;
		priv = adapter->priv[i];
		p += FUNC10(p, "\n[interface  : \"%s\"]\n",
			     priv->netdev->name);
		p += FUNC10(p, "wmm_tx_pending[0] = %d\n",
			     FUNC0(&priv->wmm_tx_pending[0]));
		p += FUNC10(p, "wmm_tx_pending[1] = %d\n",
			     FUNC0(&priv->wmm_tx_pending[1]));
		p += FUNC10(p, "wmm_tx_pending[2] = %d\n",
			     FUNC0(&priv->wmm_tx_pending[2]));
		p += FUNC10(p, "wmm_tx_pending[3] = %d\n",
			     FUNC0(&priv->wmm_tx_pending[3]));
		p += FUNC10(p, "media_state=\"%s\"\n", !priv->media_connected ?
			     "Disconnected" : "Connected");
		p += FUNC10(p, "carrier %s\n", (FUNC8(priv->netdev)
			     ? "on" : "off"));
		for (idx = 0; idx < priv->netdev->num_tx_queues; idx++) {
			txq = FUNC7(priv->netdev, idx);
			p += FUNC10(p, "tx queue %d:%s  ", idx,
				     FUNC9(txq) ?
				     "stopped" : "started");
		}
		p += FUNC10(p, "\n%s: num_tx_timeout = %d\n",
			     priv->netdev->name, priv->num_tx_timeout);
	}

	if (adapter->iface_type == MWIFIEX_SDIO ||
	    adapter->iface_type == MWIFIEX_PCIE) {
		p += FUNC10(p, "\n=== %s register dump===\n",
			     adapter->iface_type == MWIFIEX_SDIO ?
							"SDIO" : "PCIE");
		if (adapter->if_ops.reg_dump)
			p += adapter->if_ops.reg_dump(adapter, p);
	}
	p += FUNC10(p, "\n=== more debug information\n");
	debug_info = FUNC2(sizeof(*debug_info), GFP_KERNEL);
	if (debug_info) {
		for (i = 0; i < adapter->priv_num; i++) {
			if (!adapter->priv[i] || !adapter->priv[i]->netdev)
				continue;
			priv = adapter->priv[i];
			FUNC6(priv, debug_info);
			p += FUNC4(priv, p, debug_info);
			break;
		}
		FUNC1(debug_info);
	}

	FUNC11(p, "\n========End dump========\n");
	p += FUNC12("\n========End dump========\n");
	FUNC3(adapter, MSG, "===mwifiex driverinfo dump end===\n");
	adapter->devdump_len = p - (char *)adapter->devdump_data;
}