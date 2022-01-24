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
struct ath6kl_usb {struct ath6kl_usb* diag_resp_buffer; struct ath6kl_usb* diag_cmd_buffer; int /*<<< orphan*/  interface; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath6kl_usb*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath6kl_usb*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath6kl_usb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ath6kl_usb *ar_usb)
{
	FUNC1(ar_usb);

	FUNC0(ar_usb);

	FUNC3(ar_usb->interface, NULL);

	FUNC2(ar_usb->diag_cmd_buffer);
	FUNC2(ar_usb->diag_resp_buffer);

	FUNC2(ar_usb);
}