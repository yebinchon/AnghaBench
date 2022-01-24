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
struct urb {struct pcan_usb* context; } ;
struct pcan_usb {int /*<<< orphan*/  restart_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCAN_USB_STARTUP_TIMEOUT ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct urb*) ; 

__attribute__((used)) static void FUNC3(struct urb *urb)
{
	struct pcan_usb *pdev = urb->context;

	/* the PCAN-USB needs time to restart */
	FUNC0(&pdev->restart_timer,
			jiffies + FUNC1(PCAN_USB_STARTUP_TIMEOUT));

	/* can delete usb resources */
	FUNC2(urb);
}