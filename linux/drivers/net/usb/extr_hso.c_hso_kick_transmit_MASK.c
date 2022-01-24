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
struct hso_serial {int tx_urb_used; int (* write_data ) (struct hso_serial*) ;int /*<<< orphan*/  serial_lock; scalar_t__ tx_data; scalar_t__ tx_buffer_count; scalar_t__ tx_data_count; int /*<<< orphan*/  tx_buffer; int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (struct hso_serial*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct hso_serial *serial)
{
	unsigned long flags;
	int res;

	FUNC1(&serial->serial_lock, flags);
	if (!serial->tx_buffer_count)
		goto out;

	if (serial->tx_urb_used)
		goto out;

	/* Wakeup USB interface if necessary */
	if (FUNC0(serial->parent) == -EAGAIN)
		goto out;

	/* Switch pointers around to avoid memcpy */
	FUNC4(serial->tx_buffer, serial->tx_data);
	serial->tx_data_count = serial->tx_buffer_count;
	serial->tx_buffer_count = 0;

	/* If serial->tx_data is set, it means we switched buffers */
	if (serial->tx_data && serial->write_data) {
		res = serial->write_data(serial);
		if (res >= 0)
			serial->tx_urb_used = 1;
	}
out:
	FUNC2(&serial->serial_lock, flags);
}