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
struct ath10k_pci {int oper_irq_mode; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
#define  ATH10K_PCI_IRQ_LEGACY 129 
#define  ATH10K_PCI_IRQ_MSI 128 
 int EINVAL ; 
 struct ath10k_pci* FUNC0 (struct ath10k*) ; 
 int FUNC1 (struct ath10k*) ; 
 int FUNC2 (struct ath10k*) ; 

__attribute__((used)) static int FUNC3(struct ath10k *ar)
{
	struct ath10k_pci *ar_pci = FUNC0(ar);

	switch (ar_pci->oper_irq_mode) {
	case ATH10K_PCI_IRQ_LEGACY:
		return FUNC1(ar);
	case ATH10K_PCI_IRQ_MSI:
		return FUNC2(ar);
	default:
		return -EINVAL;
	}
}