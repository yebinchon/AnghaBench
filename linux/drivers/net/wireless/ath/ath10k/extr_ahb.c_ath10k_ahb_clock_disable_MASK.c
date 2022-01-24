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
struct ath10k_ahb {int /*<<< orphan*/  rtc_clk; int /*<<< orphan*/  ref_clk; int /*<<< orphan*/  cmd_clk; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 struct ath10k_ahb* FUNC0 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ath10k *ar)
{
	struct ath10k_ahb *ar_ahb = FUNC0(ar);

	FUNC1(ar_ahb->cmd_clk);

	FUNC1(ar_ahb->ref_clk);

	FUNC1(ar_ahb->rtc_clk);
}