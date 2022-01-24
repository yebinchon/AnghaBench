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
struct usb_interface {int dummy; } ;
struct lbs_private {int dummy; } ;
struct if_usb_card {int surprise_removed; struct lbs_private* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct if_usb_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct lbs_private*) ; 
 struct if_usb_card* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct usb_interface *intf)
{
	struct if_usb_card *cardp = FUNC4(intf);
	struct lbs_private *priv = cardp->priv;

	cardp->surprise_removed = 1;

	if (priv) {
		FUNC3(priv);
		FUNC2(priv);
	}

	/* Unlink and free urb */
	FUNC0(cardp);

	FUNC6(intf, NULL);
	FUNC5(FUNC1(intf));
}