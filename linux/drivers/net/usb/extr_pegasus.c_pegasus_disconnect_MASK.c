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
struct pegasus {int /*<<< orphan*/  net; int /*<<< orphan*/ * rx_skb; int /*<<< orphan*/  carrier_check; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  PEGASUS_UNPLUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pegasus*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct pegasus*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct pegasus* FUNC8 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct usb_interface *intf)
{
	struct pegasus *pegasus = FUNC8(intf);

	FUNC9(intf, NULL);
	if (!pegasus) {
		FUNC1(&intf->dev, "unregistering non-bound device?\n");
		return;
	}

	pegasus->flags |= PEGASUS_UNPLUG;
	FUNC0(&pegasus->carrier_check);
	FUNC7(pegasus->net);
	FUNC6(pegasus);
	FUNC3(pegasus);
	if (pegasus->rx_skb != NULL) {
		FUNC2(pegasus->rx_skb);
		pegasus->rx_skb = NULL;
	}
	FUNC4(pegasus->net);
	FUNC5();
}