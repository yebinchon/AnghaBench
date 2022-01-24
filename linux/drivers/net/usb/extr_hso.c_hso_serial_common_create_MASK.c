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
struct hso_serial {int minor; int num_rx_urbs; int rx_data_length; int tx_data_length; void* tx_buffer; void* tx_data; scalar_t__ tx_buffer_count; scalar_t__ tx_data_count; TYPE_3__* tx_urb; void** rx_data; TYPE_2__** rx_urb; int /*<<< orphan*/  serial_lock; int /*<<< orphan*/  magic; TYPE_4__* parent; int /*<<< orphan*/  port; } ;
struct TYPE_8__ {TYPE_1__* interface; int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {scalar_t__ transfer_buffer_length; int /*<<< orphan*/ * transfer_buffer; } ;
struct TYPE_6__ {scalar_t__ transfer_buffer_length; int /*<<< orphan*/ * transfer_buffer; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HSO_SERIAL_MAGIC ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct hso_serial*) ; 
 int /*<<< orphan*/  hso_serial_dev_groups ; 
 int /*<<< orphan*/  FUNC2 (struct hso_serial*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tty_drv ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct hso_serial *serial, int num_urbs,
				    int rx_size, int tx_size)
{
	int minor;
	int i;

	FUNC5(&serial->port);

	minor = FUNC0();
	if (minor < 0)
		goto exit;

	/* register our minor number */
	serial->parent->dev = FUNC6(&serial->port,
			tty_drv, minor, &serial->parent->interface->dev,
			serial->parent, hso_serial_dev_groups);

	/* fill in specific data for later use */
	serial->minor = minor;
	serial->magic = HSO_SERIAL_MAGIC;
	FUNC4(&serial->serial_lock);
	serial->num_rx_urbs = num_urbs;

	/* RX, allocate urb and initialize */

	/* prepare our RX buffer */
	serial->rx_data_length = rx_size;
	for (i = 0; i < serial->num_rx_urbs; i++) {
		serial->rx_urb[i] = FUNC7(0, GFP_KERNEL);
		if (!serial->rx_urb[i])
			goto exit;
		serial->rx_urb[i]->transfer_buffer = NULL;
		serial->rx_urb[i]->transfer_buffer_length = 0;
		serial->rx_data[i] = FUNC3(serial->rx_data_length,
					     GFP_KERNEL);
		if (!serial->rx_data[i])
			goto exit;
	}

	/* TX, allocate urb and initialize */
	serial->tx_urb = FUNC7(0, GFP_KERNEL);
	if (!serial->tx_urb)
		goto exit;
	serial->tx_urb->transfer_buffer = NULL;
	serial->tx_urb->transfer_buffer_length = 0;
	/* prepare our TX buffer */
	serial->tx_data_count = 0;
	serial->tx_buffer_count = 0;
	serial->tx_data_length = tx_size;
	serial->tx_data = FUNC3(serial->tx_data_length, GFP_KERNEL);
	if (!serial->tx_data)
		goto exit;

	serial->tx_buffer = FUNC3(serial->tx_data_length, GFP_KERNEL);
	if (!serial->tx_buffer)
		goto exit;

	return 0;
exit:
	FUNC2(serial);
	FUNC1(serial);
	return -1;
}