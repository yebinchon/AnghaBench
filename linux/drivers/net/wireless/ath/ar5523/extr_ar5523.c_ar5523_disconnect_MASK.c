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
struct ieee80211_hw {struct ar5523* priv; } ;
struct ar5523 {int /*<<< orphan*/  wq; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR5523_USB_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (struct ar5523*) ; 
 int /*<<< orphan*/  FUNC1 (struct ar5523*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ar5523*) ; 
 int /*<<< orphan*/  FUNC3 (struct ar5523*) ; 
 int /*<<< orphan*/  FUNC4 (struct ar5523*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ieee80211_hw* FUNC9 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct usb_interface *intf)
{
	struct ieee80211_hw *hw = FUNC9(intf);
	struct ar5523 *ar = hw->priv;

	FUNC1(ar, "detaching\n");
	FUNC8(AR5523_USB_DISCONNECTED, &ar->flags);

	FUNC7(hw);

	FUNC0(ar);
	FUNC4(ar);
	FUNC3(ar);
	FUNC2(ar);

	FUNC5(ar->wq);

	FUNC6(hw);
	FUNC10(intf, NULL);
}