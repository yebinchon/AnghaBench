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
typedef  int /*<<< orphan*/  u32 ;
struct ath10k_pci {scalar_t__ mem; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 scalar_t__ PCIE_LOCAL_BASE_ADDRESS ; 
 scalar_t__ RTC_STATE_ADDRESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ RTC_STATE_V_ON ; 
 struct ath10k_pci* FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static bool FUNC3(struct ath10k *ar)
{
	struct ath10k_pci *ar_pci = FUNC1(ar);
	u32 val = FUNC2(ar_pci->mem + PCIE_LOCAL_BASE_ADDRESS +
			   RTC_STATE_ADDRESS);

	return FUNC0(val) == RTC_STATE_V_ON;
}