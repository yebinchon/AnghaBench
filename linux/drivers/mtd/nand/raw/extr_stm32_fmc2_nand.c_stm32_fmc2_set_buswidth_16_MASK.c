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
struct stm32_fmc2_nfc {scalar_t__ io_base; } ;

/* Variables and functions */
 scalar_t__ FMC2_PCR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FMC2_PCR_PWID_BUSWIDTH_16 ; 
 int /*<<< orphan*/  FMC2_PCR_PWID_MASK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct stm32_fmc2_nfc *fmc2, bool set)
{
	u32 pcr = FUNC1(fmc2->io_base + FMC2_PCR);

	pcr &= ~FMC2_PCR_PWID_MASK;
	if (set)
		pcr |= FUNC0(FMC2_PCR_PWID_BUSWIDTH_16);
	FUNC2(pcr, fmc2->io_base + FMC2_PCR);
}