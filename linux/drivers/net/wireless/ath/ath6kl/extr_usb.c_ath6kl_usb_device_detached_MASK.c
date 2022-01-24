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
struct ath6kl_usb {int /*<<< orphan*/  ar; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath6kl_usb*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct ath6kl_usb* FUNC4 (struct usb_interface*) ; 

__attribute__((used)) static void FUNC5(struct usb_interface *interface)
{
	struct ath6kl_usb *ar_usb;

	ar_usb = FUNC4(interface);
	if (ar_usb == NULL)
		return;

	FUNC1(ar_usb->ar);

	/* Delay to wait for the target to reboot */
	FUNC3(20);
	FUNC0(ar_usb->ar);
	FUNC2(ar_usb);
}