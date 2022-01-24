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
struct ath10k_htt {int tx_mem_allocated; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath10k_htt*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k_htt*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k_htt*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k_htt*) ; 

void FUNC4(struct ath10k_htt *htt)
{
	if (!htt->tx_mem_allocated)
		return;

	FUNC1(htt);
	FUNC3(htt);
	FUNC0(htt);
	FUNC2(htt);
	htt->tx_mem_allocated = false;
}