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
struct bmi_xfer {unsigned int resp_len; int rx_done; int /*<<< orphan*/  wait_for_resp; } ;
struct ath10k_ce_pipe {struct ath10k* ar; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct ath10k_ce_pipe*,void**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*) ; 

__attribute__((used)) static void FUNC3(struct ath10k_ce_pipe *ce_state)
{
	struct ath10k *ar = ce_state->ar;
	struct bmi_xfer *xfer;
	unsigned int nbytes;

	if (FUNC1(ce_state, (void **)&xfer,
					  &nbytes))
		return;

	if (FUNC0(!xfer))
		return;

	if (!xfer->wait_for_resp) {
		FUNC2(ar, "unexpected: BMI data received; ignoring\n");
		return;
	}

	xfer->resp_len = nbytes;
	xfer->rx_done = true;
}