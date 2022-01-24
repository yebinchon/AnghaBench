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
struct hso_serial {int num_rx_urbs; int /*<<< orphan*/  port; int /*<<< orphan*/  tx_data; int /*<<< orphan*/  tx_buffer; int /*<<< orphan*/  tx_urb; int /*<<< orphan*/ * rx_data; int /*<<< orphan*/ * rx_urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct hso_serial *serial)
{
	int i;

	for (i = 0; i < serial->num_rx_urbs; i++) {
		/* unlink and free RX URB */
		FUNC2(serial->rx_urb[i]);
		/* free the RX buffer */
		FUNC0(serial->rx_data[i]);
	}

	/* unlink and free TX URB */
	FUNC2(serial->tx_urb);
	FUNC0(serial->tx_buffer);
	FUNC0(serial->tx_data);
	FUNC1(&serial->port);
}