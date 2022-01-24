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
struct ar9170 {int /*<<< orphan*/  fw_load_wait; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ar9170*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC3 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC4 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC5 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC6 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC7 (struct ar9170*) ; 
 struct ar9170* FUNC8 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct usb_interface *intf)
{
	struct ar9170 *ar = FUNC8(intf);

	if (FUNC1(!ar))
		return;

	FUNC10(&ar->fw_load_wait);

	if (FUNC0(ar)) {
		FUNC3(ar);
		FUNC7(ar);
	}

	FUNC6(ar);
	FUNC5(ar);

	FUNC9(intf, NULL);

	FUNC4(ar);
	FUNC2(ar);
}