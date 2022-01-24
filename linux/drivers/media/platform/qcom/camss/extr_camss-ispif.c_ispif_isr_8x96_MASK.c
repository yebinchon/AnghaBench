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
typedef  int u32 ;
struct ispif_device {int /*<<< orphan*/  reset_complete; scalar_t__ base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ ISPIF_IRQ_GLOBAL_CLEAR_CMD ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int ISPIF_VFE_m_IRQ_STATUS_0_PIX0_OVERFLOW ; 
 int ISPIF_VFE_m_IRQ_STATUS_0_RDI0_OVERFLOW ; 
 scalar_t__ FUNC4 (int) ; 
 int ISPIF_VFE_m_IRQ_STATUS_1_PIX1_OVERFLOW ; 
 int ISPIF_VFE_m_IRQ_STATUS_1_RDI1_OVERFLOW ; 
 scalar_t__ FUNC5 (int) ; 
 int ISPIF_VFE_m_IRQ_STATUS_2_RDI2_OVERFLOW ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct ispif_device*) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC13(int irq, void *dev)
{
	struct ispif_device *ispif = dev;
	u32 value0, value1, value2, value3, value4, value5;

	value0 = FUNC8(ispif->base + FUNC3(0));
	value1 = FUNC8(ispif->base + FUNC4(0));
	value2 = FUNC8(ispif->base + FUNC5(0));
	value3 = FUNC8(ispif->base + FUNC3(1));
	value4 = FUNC8(ispif->base + FUNC4(1));
	value5 = FUNC8(ispif->base + FUNC5(1));

	FUNC12(value0, ispif->base + FUNC0(0));
	FUNC12(value1, ispif->base + FUNC1(0));
	FUNC12(value2, ispif->base + FUNC2(0));
	FUNC12(value3, ispif->base + FUNC0(1));
	FUNC12(value4, ispif->base + FUNC1(1));
	FUNC12(value5, ispif->base + FUNC2(1));

	FUNC11(0x1, ispif->base + ISPIF_IRQ_GLOBAL_CLEAR_CMD);

	if ((value0 >> 27) & 0x1)
		FUNC6(&ispif->reset_complete);

	if (FUNC10(value0 & ISPIF_VFE_m_IRQ_STATUS_0_PIX0_OVERFLOW))
		FUNC7(FUNC9(ispif), "VFE0 pix0 overflow\n");

	if (FUNC10(value0 & ISPIF_VFE_m_IRQ_STATUS_0_RDI0_OVERFLOW))
		FUNC7(FUNC9(ispif), "VFE0 rdi0 overflow\n");

	if (FUNC10(value1 & ISPIF_VFE_m_IRQ_STATUS_1_PIX1_OVERFLOW))
		FUNC7(FUNC9(ispif), "VFE0 pix1 overflow\n");

	if (FUNC10(value1 & ISPIF_VFE_m_IRQ_STATUS_1_RDI1_OVERFLOW))
		FUNC7(FUNC9(ispif), "VFE0 rdi1 overflow\n");

	if (FUNC10(value2 & ISPIF_VFE_m_IRQ_STATUS_2_RDI2_OVERFLOW))
		FUNC7(FUNC9(ispif), "VFE0 rdi2 overflow\n");

	if (FUNC10(value3 & ISPIF_VFE_m_IRQ_STATUS_0_PIX0_OVERFLOW))
		FUNC7(FUNC9(ispif), "VFE1 pix0 overflow\n");

	if (FUNC10(value3 & ISPIF_VFE_m_IRQ_STATUS_0_RDI0_OVERFLOW))
		FUNC7(FUNC9(ispif), "VFE1 rdi0 overflow\n");

	if (FUNC10(value4 & ISPIF_VFE_m_IRQ_STATUS_1_PIX1_OVERFLOW))
		FUNC7(FUNC9(ispif), "VFE1 pix1 overflow\n");

	if (FUNC10(value4 & ISPIF_VFE_m_IRQ_STATUS_1_RDI1_OVERFLOW))
		FUNC7(FUNC9(ispif), "VFE1 rdi1 overflow\n");

	if (FUNC10(value5 & ISPIF_VFE_m_IRQ_STATUS_2_RDI2_OVERFLOW))
		FUNC7(FUNC9(ispif), "VFE1 rdi2 overflow\n");

	return IRQ_HANDLED;
}