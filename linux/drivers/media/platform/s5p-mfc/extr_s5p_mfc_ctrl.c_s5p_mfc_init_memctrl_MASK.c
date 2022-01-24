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
struct s5p_mfc_dev {int /*<<< orphan*/ * dma_base; } ;

/* Variables and functions */
 size_t BANK_L_CTX ; 
 size_t BANK_R_CTX ; 
 scalar_t__ FUNC0 (struct s5p_mfc_dev*) ; 
 int /*<<< orphan*/  S5P_FIMV_MC_DRAMBASE_ADR_A ; 
 int /*<<< orphan*/  S5P_FIMV_MC_DRAMBASE_ADR_B ; 
 int /*<<< orphan*/  S5P_FIMV_RISC_BASE_ADDRESS_V6 ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC2 (struct s5p_mfc_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct s5p_mfc_dev *dev)
{
	if (FUNC0(dev)) {
		FUNC2(dev, dev->dma_base[BANK_L_CTX],
			  S5P_FIMV_RISC_BASE_ADDRESS_V6);
		FUNC1(2, "Base Address : %pad\n",
			  &dev->dma_base[BANK_L_CTX]);
	} else {
		FUNC2(dev, dev->dma_base[BANK_L_CTX],
			  S5P_FIMV_MC_DRAMBASE_ADR_A);
		FUNC2(dev, dev->dma_base[BANK_R_CTX],
			  S5P_FIMV_MC_DRAMBASE_ADR_B);
		FUNC1(2, "Bank1: %pad, Bank2: %pad\n",
			  &dev->dma_base[BANK_L_CTX],
			  &dev->dma_base[BANK_R_CTX]);
	}
}