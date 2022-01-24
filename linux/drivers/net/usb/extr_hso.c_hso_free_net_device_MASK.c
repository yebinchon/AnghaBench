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
struct hso_net {scalar_t__ net; struct hso_device* mux_bulk_tx_buf; int /*<<< orphan*/  mux_bulk_tx_urb; struct hso_device** mux_bulk_rx_buf_pool; int /*<<< orphan*/ * mux_bulk_rx_urb_pool; int /*<<< orphan*/  parent; } ;
struct hso_device {int dummy; } ;

/* Variables and functions */
 int MUX_BULK_RX_BUF_COUNT ; 
 struct hso_net* FUNC0 (struct hso_device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct hso_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct hso_device *hso_dev)
{
	int i;
	struct hso_net *hso_net = FUNC0(hso_dev);

	if (!hso_net)
		return;

	FUNC3(hso_net->parent);

	if (hso_net->net)
		FUNC4(hso_net->net);

	/* start freeing */
	for (i = 0; i < MUX_BULK_RX_BUF_COUNT; i++) {
		FUNC5(hso_net->mux_bulk_rx_urb_pool[i]);
		FUNC2(hso_net->mux_bulk_rx_buf_pool[i]);
		hso_net->mux_bulk_rx_buf_pool[i] = NULL;
	}
	FUNC5(hso_net->mux_bulk_tx_urb);
	FUNC2(hso_net->mux_bulk_tx_buf);
	hso_net->mux_bulk_tx_buf = NULL;

	if (hso_net->net)
		FUNC1(hso_net->net);

	FUNC2(hso_dev);
}