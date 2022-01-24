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
struct ath10k_pci {int (* pci_hard_reset ) (struct ath10k*) ;} ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 scalar_t__ FUNC0 (int) ; 
 struct ath10k_pci* FUNC1 (struct ath10k*) ; 
 int FUNC2 (struct ath10k*) ; 

__attribute__((used)) static int FUNC3(struct ath10k *ar)
{
	struct ath10k_pci *ar_pci = FUNC1(ar);

	if (FUNC0(!ar_pci->pci_hard_reset))
		return -ENOTSUPP;

	return ar_pci->pci_hard_reset(ar);
}