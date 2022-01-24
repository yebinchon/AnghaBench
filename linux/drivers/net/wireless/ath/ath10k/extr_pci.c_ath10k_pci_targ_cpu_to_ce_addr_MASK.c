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
struct ath10k_pci {int /*<<< orphan*/  (* targ_cpu_to_ce_addr ) (struct ath10k*,int /*<<< orphan*/ ) ;} ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOTSUPP ; 
 scalar_t__ FUNC0 (int) ; 
 struct ath10k_pci* FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC3(struct ath10k *ar, u32 addr)
{
	struct ath10k_pci *ar_pci = FUNC1(ar);

	if (FUNC0(!ar_pci->targ_cpu_to_ce_addr))
		return -ENOTSUPP;

	return ar_pci->targ_cpu_to_ce_addr(ar, addr);
}