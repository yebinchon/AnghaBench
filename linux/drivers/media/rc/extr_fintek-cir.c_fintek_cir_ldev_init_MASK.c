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
struct fintek_dev {int cir_addr; int cir_irq; int /*<<< orphan*/  cir_port_len; int /*<<< orphan*/  logical_dev_cir; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIR_CR_BASE_ADDR_HI ; 
 int /*<<< orphan*/  CIR_CR_BASE_ADDR_LO ; 
 int /*<<< orphan*/  CIR_CR_DEV_EN ; 
 int /*<<< orphan*/  CIR_CR_IRQ_SEL ; 
 int LOGICAL_DEV_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct fintek_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fintek_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct fintek_dev *fintek)
{
	/* Select CIR logical device and enable */
	FUNC1(fintek, fintek->logical_dev_cir);
	FUNC0(fintek, LOGICAL_DEV_ENABLE, CIR_CR_DEV_EN);

	/* Write allocated CIR address and IRQ information to hardware */
	FUNC0(fintek, fintek->cir_addr >> 8, CIR_CR_BASE_ADDR_HI);
	FUNC0(fintek, fintek->cir_addr & 0xff, CIR_CR_BASE_ADDR_LO);

	FUNC0(fintek, fintek->cir_irq, CIR_CR_IRQ_SEL);

	FUNC2("CIR initialized, base io address: 0x%lx, irq: %d (len: %d)",
		fintek->cir_addr, fintek->cir_irq, fintek->cir_port_len);
}