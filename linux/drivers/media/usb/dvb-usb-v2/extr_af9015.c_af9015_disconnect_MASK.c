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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct dvb_usb_device {struct usb_interface* intf; } ;
struct af9015_state {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 struct af9015_state* FUNC0 (struct dvb_usb_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct dvb_usb_device *d)
{
	struct af9015_state *state = FUNC0(d);
	struct usb_interface *intf = d->intf;

	FUNC1(&intf->dev, "\n");

	FUNC2(state->regmap);
}