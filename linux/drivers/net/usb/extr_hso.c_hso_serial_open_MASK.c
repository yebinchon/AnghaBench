#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {struct hso_serial* driver_data; int /*<<< orphan*/  index; } ;
struct TYPE_4__ {int count; } ;
struct hso_serial {scalar_t__ magic; TYPE_2__* parent; TYPE_1__ port; int /*<<< orphan*/  unthrottle_tasklet; int /*<<< orphan*/  rx_state; int /*<<< orphan*/  minor; } ;
struct file {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  interface; int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ HSO_SERIAL_MAGIC ; 
 int /*<<< orphan*/  RX_IDLE ; 
 int TIOCM_DTR ; 
 int TIOCM_RTS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*,int /*<<< orphan*/ *) ; 
 struct hso_serial* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ hso_unthrottle_tasklet ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,void (*) (unsigned long),unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,struct tty_struct*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct tty_struct *tty, struct file *filp)
{
	struct hso_serial *serial = FUNC2(tty->index);
	int result;

	/* sanity check */
	if (serial == NULL || serial->magic != HSO_SERIAL_MAGIC) {
		FUNC0(1);
		tty->driver_data = NULL;
		FUNC3(0x1, "Failed to open port\n");
		return -ENODEV;
	}

	FUNC8(&serial->parent->mutex);
	result = FUNC12(serial->parent->interface);
	if (result < 0)
		goto err_out;

	FUNC3(0x1, "Opening %d\n", serial->minor);

	/* setup */
	tty->driver_data = serial;
	FUNC11(&serial->port, tty);

	/* check for port already opened, if not set the termios */
	serial->port.count++;
	if (serial->port.count == 1) {
		serial->rx_state = RX_IDLE;
		/* Force default termio settings */
		FUNC1(tty, NULL);
		FUNC10(&serial->unthrottle_tasklet,
			     (void (*)(unsigned long))hso_unthrottle_tasklet,
			     (unsigned long)serial);
		result = FUNC5(serial->parent, GFP_KERNEL);
		if (result) {
			FUNC6(serial->parent);
			serial->port.count--;
		} else {
			FUNC7(&serial->parent->ref);
		}
	} else {
		FUNC3(0x1, "Port was already open\n");
	}

	FUNC13(serial->parent->interface);

	/* done */
	if (result)
		FUNC4(tty, TIOCM_RTS | TIOCM_DTR, 0);
err_out:
	FUNC9(&serial->parent->mutex);
	return result;
}