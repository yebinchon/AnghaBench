#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct ath10k_ce {TYPE_2__* bus_ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  per_ce_irq; } ;
struct ath10k {TYPE_1__ hw_params; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* read32 ) (struct ath10k*,scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CE_INTERRUPT_SUMMARY ; 
 scalar_t__ CE_WRAPPER_BASE_ADDRESS ; 
 scalar_t__ CE_WRAPPER_INTERRUPT_SUMMARY_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ath10k_ce* FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,scalar_t__) ; 

__attribute__((used)) static inline u32 FUNC3(struct ath10k *ar)
{
	struct ath10k_ce *ce = FUNC1(ar);

	if (!ar->hw_params.per_ce_irq)
		return FUNC0(
			ce->bus_ops->read32((ar), CE_WRAPPER_BASE_ADDRESS +
			CE_WRAPPER_INTERRUPT_SUMMARY_ADDRESS));
	else
		return CE_INTERRUPT_SUMMARY;
}