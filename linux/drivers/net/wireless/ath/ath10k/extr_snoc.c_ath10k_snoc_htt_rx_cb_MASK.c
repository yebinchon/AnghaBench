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
struct ath10k_ce_pipe {int /*<<< orphan*/  ar; } ;

/* Variables and functions */
 int /*<<< orphan*/  CE_POLL_PIPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ath10k_snoc_htt_rx_deliver ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k_ce_pipe*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ath10k_ce_pipe *ce_state)
{
	FUNC0(ce_state->ar, CE_POLL_PIPE);
	FUNC1(ce_state, ath10k_snoc_htt_rx_deliver);
}