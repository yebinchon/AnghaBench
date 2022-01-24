#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct ath10k_pci {TYPE_1__* pipe_info; } ;
struct ath10k {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ce_hdl; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_PCI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 struct ath10k_pci* FUNC2 (struct ath10k*) ; 

u16 FUNC3(struct ath10k *ar, u8 pipe)
{
	struct ath10k_pci *ar_pci = FUNC2(ar);

	FUNC1(ar, ATH10K_DBG_PCI, "pci hif get free queue number\n");

	return FUNC0(ar_pci->pipe_info[pipe].ce_hdl);
}