#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct em28xx {int /*<<< orphan*/ * sbutton_input_dev; TYPE_1__* intf; scalar_t__ num_button_polling_addresses; int /*<<< orphan*/  buttons_query_work; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct em28xx *dev)
{
	/* Cancel polling */
	FUNC0(&dev->buttons_query_work);
	/* Clear polling addresses list */
	dev->num_button_polling_addresses = 0;
	/* Deregister input devices */
	if (dev->sbutton_input_dev) {
		FUNC1(&dev->intf->dev, "Deregistering snapshot button\n");
		FUNC2(dev->sbutton_input_dev);
		dev->sbutton_input_dev = NULL;
	}
}