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
typedef  int u8 ;
struct nvt_dev {int cir_irq; int /*<<< orphan*/  cir_addr; } ;

/* Variables and functions */
 int CR_CIR_IRQ_RSRC ; 
 int CR_MULTIFUNC_PIN_SEL ; 
 int CR_OUTPUT_PIN_SEL ; 
 int /*<<< orphan*/  LOGICAL_DEV_CIR ; 
 int MULTIFUNC_ENABLE_CIR ; 
 int MULTIFUNC_ENABLE_CIRWB ; 
 int MULTIFUNC_PIN_SEL_MASK ; 
 int OUTPUT_ENABLE_CIR ; 
 int OUTPUT_ENABLE_CIRWB ; 
 int OUTPUT_PIN_SEL_MASK ; 
 scalar_t__ FUNC0 (struct nvt_dev*) ; 
 int FUNC1 (struct nvt_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvt_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nvt_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nvt_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct nvt_dev *nvt)
{
	u8 val, psreg, psmask, psval;

	if (FUNC0(nvt)) {
		psreg = CR_MULTIFUNC_PIN_SEL;
		psmask = MULTIFUNC_PIN_SEL_MASK;
		psval = MULTIFUNC_ENABLE_CIR | MULTIFUNC_ENABLE_CIRWB;
	} else {
		psreg = CR_OUTPUT_PIN_SEL;
		psmask = OUTPUT_PIN_SEL_MASK;
		psval = OUTPUT_ENABLE_CIR | OUTPUT_ENABLE_CIRWB;
	}

	/* output pin selection: enable CIR, with WB sensor enabled */
	val = FUNC1(nvt, psreg);
	val &= psmask;
	val |= psval;
	FUNC2(nvt, val, psreg);

	/* Select CIR logical device */
	FUNC4(nvt, LOGICAL_DEV_CIR);

	FUNC5(nvt, &nvt->cir_addr);

	FUNC2(nvt, nvt->cir_irq, CR_CIR_IRQ_RSRC);

	FUNC3("CIR initialized, base io port address: 0x%lx, irq: %d",
		nvt->cir_addr, nvt->cir_irq);
}