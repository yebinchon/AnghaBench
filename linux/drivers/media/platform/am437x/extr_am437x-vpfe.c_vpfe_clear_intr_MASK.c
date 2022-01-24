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
struct vpfe_ccdc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VPFE_IRQ_EOI ; 
 int /*<<< orphan*/  VPFE_IRQ_STS ; 
#define  VPFE_VDINT0 130 
#define  VPFE_VDINT1 129 
#define  VPFE_VDINT2 128 
 unsigned int FUNC0 (struct vpfe_ccdc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vpfe_ccdc*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct vpfe_ccdc *ccdc, int vdint)
{
	unsigned int vpfe_int_status;

	vpfe_int_status = FUNC0(ccdc, VPFE_IRQ_STS);

	switch (vdint) {
	/* VD0 interrupt */
	case VPFE_VDINT0:
		vpfe_int_status &= ~VPFE_VDINT0;
		vpfe_int_status |= VPFE_VDINT0;
		break;

	/* VD1 interrupt */
	case VPFE_VDINT1:
		vpfe_int_status &= ~VPFE_VDINT1;
		vpfe_int_status |= VPFE_VDINT1;
		break;

	/* VD2 interrupt */
	case VPFE_VDINT2:
		vpfe_int_status &= ~VPFE_VDINT2;
		vpfe_int_status |= VPFE_VDINT2;
		break;

	/* Clear all interrupts */
	default:
		vpfe_int_status &= ~(VPFE_VDINT0 |
				VPFE_VDINT1 |
				VPFE_VDINT2);
		vpfe_int_status |= (VPFE_VDINT0 |
				VPFE_VDINT1 |
				VPFE_VDINT2);
		break;
	}
	/* Clear specific VDINT from the status register */
	FUNC1(ccdc, vpfe_int_status, VPFE_IRQ_STS);

	vpfe_int_status = FUNC0(ccdc, VPFE_IRQ_STS);

	/* Acknowledge that we are done with all interrupts */
	FUNC1(ccdc, 1, VPFE_IRQ_EOI);
}