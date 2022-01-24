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
struct ath10k_ahb {int /*<<< orphan*/ * cpu_init_rst; int /*<<< orphan*/ * radio_srif_rst; int /*<<< orphan*/ * radio_warm_rst; int /*<<< orphan*/ * radio_cold_rst; int /*<<< orphan*/ * core_cold_rst; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 struct ath10k_ahb* FUNC0 (struct ath10k*) ; 

__attribute__((used)) static void FUNC1(struct ath10k *ar)
{
	struct ath10k_ahb *ar_ahb = FUNC0(ar);

	ar_ahb->core_cold_rst = NULL;
	ar_ahb->radio_cold_rst = NULL;
	ar_ahb->radio_warm_rst = NULL;
	ar_ahb->radio_srif_rst = NULL;
	ar_ahb->cpu_init_rst = NULL;
}