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
struct hso_net {scalar_t__ mux_bulk_tx_urb; scalar_t__* mux_bulk_rx_urb_pool; } ;
struct hso_device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int MUX_BULK_RX_BUF_COUNT ; 
 struct hso_net* FUNC0 (struct hso_device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct hso_device *hso_dev)
{
	int i;
	struct hso_net *hso_net = FUNC0(hso_dev);

	if (!hso_net)
		return -ENODEV;

	for (i = 0; i < MUX_BULK_RX_BUF_COUNT; i++) {
		if (hso_net->mux_bulk_rx_urb_pool[i])
			FUNC1(hso_net->mux_bulk_rx_urb_pool[i]);

	}
	if (hso_net->mux_bulk_tx_urb)
		FUNC1(hso_net->mux_bulk_tx_urb);

	return 0;
}