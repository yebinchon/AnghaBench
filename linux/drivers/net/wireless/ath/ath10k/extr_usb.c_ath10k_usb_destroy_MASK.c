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
struct ath10k_usb {int /*<<< orphan*/  diag_resp_buffer; int /*<<< orphan*/  diag_cmd_buffer; int /*<<< orphan*/  interface; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*) ; 
 struct ath10k_usb* FUNC2 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ath10k *ar)
{
	struct ath10k_usb *ar_usb = FUNC2(ar);

	FUNC1(ar);
	FUNC0(ar);
	FUNC4(ar_usb->interface, NULL);

	FUNC3(ar_usb->diag_cmd_buffer);
	FUNC3(ar_usb->diag_resp_buffer);
}