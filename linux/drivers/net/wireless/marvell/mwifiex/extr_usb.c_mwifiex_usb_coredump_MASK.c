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
struct usb_card_rec {int /*<<< orphan*/  adapter; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MWIFIEX_BSS_ROLE_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usb_interface* FUNC2 (struct device*) ; 
 struct usb_card_rec* FUNC3 (struct usb_interface*) ; 

__attribute__((used)) static void FUNC4(struct device *dev)
{
	struct usb_interface *intf = FUNC2(dev);
	struct usb_card_rec *card = FUNC3(intf);

	FUNC0(FUNC1(card->adapter,
					       MWIFIEX_BSS_ROLE_ANY));
}