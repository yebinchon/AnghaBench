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
struct ath10k_usb {int /*<<< orphan*/ * pipes; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int ATH10K_USB_PIPE_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ *) ; 
 struct ath10k_usb* FUNC1 (struct ath10k*) ; 

__attribute__((used)) static void FUNC2(struct ath10k *ar)
{
	struct ath10k_usb *ar_usb = FUNC1(ar);
	int i;

	for (i = 0; i < ATH10K_USB_PIPE_MAX; i++)
		FUNC0(ar, &ar_usb->pipes[i]);
}