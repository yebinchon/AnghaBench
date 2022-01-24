#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ath10k_usb {TYPE_1__* pipes; } ;
struct ath10k {int dummy; } ;
struct TYPE_2__ {int urb_cnt_thresh; int urb_alloc; } ;

/* Variables and functions */
 int ATH10K_USB_PIPE_TX_CTRL ; 
 int ATH10K_USB_PIPE_TX_DATA_HP ; 
 struct ath10k_usb* FUNC0 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*) ; 

__attribute__((used)) static int FUNC2(struct ath10k *ar)
{
	int i;
	struct ath10k_usb *ar_usb = FUNC0(ar);

	FUNC1(ar);

	/* set the TX resource avail threshold for each TX pipe */
	for (i = ATH10K_USB_PIPE_TX_CTRL;
	     i <= ATH10K_USB_PIPE_TX_DATA_HP; i++) {
		ar_usb->pipes[i].urb_cnt_thresh =
		    ar_usb->pipes[i].urb_alloc / 2;
	}

	return 0;
}