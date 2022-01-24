#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int dummy; } ;
struct rfkill {int dummy; } ;
struct hso_serial {TYPE_1__* parent; int /*<<< orphan*/  port; } ;
struct TYPE_12__ {int /*<<< orphan*/  net; struct rfkill* rfkill; } ;
struct TYPE_11__ {int /*<<< orphan*/  async_get_intf; int /*<<< orphan*/  async_put_intf; struct usb_interface* interface; } ;
struct TYPE_10__ {int /*<<< orphan*/  ref; int /*<<< orphan*/  async_get_intf; int /*<<< orphan*/  async_put_intf; struct usb_interface* interface; } ;
struct TYPE_9__ {int usb_gone; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int HSO_MAX_NET_DEVICES ; 
 int HSO_SERIAL_TTY_MINORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_7__* FUNC1 (TYPE_3__*) ; 
 struct hso_serial* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  hso_serial_ref_free ; 
 int /*<<< orphan*/  FUNC4 (struct hso_serial*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_3__** network_table ; 
 int /*<<< orphan*/  FUNC10 (struct rfkill*) ; 
 int /*<<< orphan*/  FUNC11 (struct rfkill*) ; 
 TYPE_2__** serial_table ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC14(struct usb_interface *interface)
{
	struct hso_serial *serial;
	int i;

	for (i = 0; i < HSO_SERIAL_TTY_MINORS; i++) {
		if (serial_table[i] &&
		    (serial_table[i]->interface == interface)) {
			serial = FUNC2(serial_table[i]);
			FUNC13(&serial->port, false);
			FUNC7(&serial->parent->mutex);
			serial->parent->usb_gone = 1;
			FUNC8(&serial->parent->mutex);
			FUNC0(&serial_table[i]->async_put_intf);
			FUNC0(&serial_table[i]->async_get_intf);
			FUNC4(serial);
			FUNC6(&serial_table[i]->ref, hso_serial_ref_free);
			FUNC12(i, NULL);
		}
	}

	for (i = 0; i < HSO_MAX_NET_DEVICES; i++) {
		if (network_table[i] &&
		    (network_table[i]->interface == interface)) {
			struct rfkill *rfk = FUNC1(network_table[i])->rfkill;
			/* hso_stop_net_device doesn't stop the net queue since
			 * traffic needs to start it again when suspended */
			FUNC9(FUNC1(network_table[i])->net);
			FUNC5(network_table[i]);
			FUNC0(&network_table[i]->async_put_intf);
			FUNC0(&network_table[i]->async_get_intf);
			if (rfk) {
				FUNC11(rfk);
				FUNC10(rfk);
			}
			FUNC3(network_table[i]);
		}
	}
}