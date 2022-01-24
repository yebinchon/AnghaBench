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
struct ath10k_pci {scalar_t__ oper_irq_mode; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 scalar_t__ ATH10K_PCI_IRQ_MSI ; 
 struct ath10k_pci* FUNC0 (struct ath10k*) ; 

__attribute__((used)) static inline const char *FUNC1(struct ath10k *ar)
{
	struct ath10k_pci *ar_pci = FUNC0(ar);

	if (ar_pci->oper_irq_mode == ATH10K_PCI_IRQ_MSI)
		return "msi";

	return "legacy";
}