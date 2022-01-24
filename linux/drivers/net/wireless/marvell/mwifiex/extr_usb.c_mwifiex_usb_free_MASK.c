#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct usb_tx_data_port {TYPE_3__* tx_data_list; } ;
struct TYPE_8__ {int /*<<< orphan*/ * urb; } ;
struct TYPE_5__ {int /*<<< orphan*/ * urb; } ;
struct usb_card_rec {TYPE_4__ tx_cmd; struct usb_tx_data_port* port; TYPE_2__* rx_data_list; int /*<<< orphan*/  rx_data_urb_pending; TYPE_1__ rx_cmd; int /*<<< orphan*/  rx_cmd_urb_pending; } ;
struct TYPE_7__ {int /*<<< orphan*/ * urb; } ;
struct TYPE_6__ {int /*<<< orphan*/ * urb; } ;

/* Variables and functions */
 int MWIFIEX_RX_DATA_URB ; 
 int MWIFIEX_TX_DATA_PORT ; 
 int MWIFIEX_TX_DATA_URB ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct usb_card_rec *card)
{
	struct usb_tx_data_port *port;
	int i, j;

	if (FUNC0(&card->rx_cmd_urb_pending) && card->rx_cmd.urb)
		FUNC2(card->rx_cmd.urb);

	FUNC1(card->rx_cmd.urb);
	card->rx_cmd.urb = NULL;

	if (FUNC0(&card->rx_data_urb_pending))
		for (i = 0; i < MWIFIEX_RX_DATA_URB; i++)
			if (card->rx_data_list[i].urb)
				FUNC2(card->rx_data_list[i].urb);

	for (i = 0; i < MWIFIEX_RX_DATA_URB; i++) {
		FUNC1(card->rx_data_list[i].urb);
		card->rx_data_list[i].urb = NULL;
	}

	for (i = 0; i < MWIFIEX_TX_DATA_PORT; i++) {
		port = &card->port[i];
		for (j = 0; j < MWIFIEX_TX_DATA_URB; j++) {
			FUNC2(port->tx_data_list[j].urb);
			FUNC1(port->tx_data_list[j].urb);
			port->tx_data_list[j].urb = NULL;
		}
	}

	FUNC1(card->tx_cmd.urb);
	card->tx_cmd.urb = NULL;

	return;
}