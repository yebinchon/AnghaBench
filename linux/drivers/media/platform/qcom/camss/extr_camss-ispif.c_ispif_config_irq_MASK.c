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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct ispif_device {scalar_t__ base; } ;
typedef  enum ispif_intf { ____Placeholder_ispif_intf } ispif_intf ;

/* Variables and functions */
 scalar_t__ ISPIF_IRQ_GLOBAL_CLEAR_CMD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISPIF_VFE_m_IRQ_MASK_0_PIX0_ENABLE ; 
 int /*<<< orphan*/  ISPIF_VFE_m_IRQ_MASK_0_PIX0_MASK ; 
 int /*<<< orphan*/  ISPIF_VFE_m_IRQ_MASK_0_RDI0_ENABLE ; 
 int /*<<< orphan*/  ISPIF_VFE_m_IRQ_MASK_0_RDI0_MASK ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISPIF_VFE_m_IRQ_MASK_1_PIX1_ENABLE ; 
 int /*<<< orphan*/  ISPIF_VFE_m_IRQ_MASK_1_PIX1_MASK ; 
 int /*<<< orphan*/  ISPIF_VFE_m_IRQ_MASK_1_RDI1_ENABLE ; 
 int /*<<< orphan*/  ISPIF_VFE_m_IRQ_MASK_1_RDI1_MASK ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISPIF_VFE_m_IRQ_MASK_2_RDI2_ENABLE ; 
 int /*<<< orphan*/  ISPIF_VFE_m_IRQ_MASK_2_RDI2_MASK ; 
#define  PIX0 132 
#define  PIX1 131 
#define  RDI0 130 
#define  RDI1 129 
#define  RDI2 128 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct ispif_device *ispif, enum ispif_intf intf,
			     u8 vfe, u8 enable)
{
	u32 val;

	switch (intf) {
	case PIX0:
		val = FUNC6(ispif->base + FUNC3(vfe));
		val &= ~ISPIF_VFE_m_IRQ_MASK_0_PIX0_MASK;
		if (enable)
			val |= ISPIF_VFE_m_IRQ_MASK_0_PIX0_ENABLE;
		FUNC8(val, ispif->base + FUNC3(vfe));
		FUNC8(ISPIF_VFE_m_IRQ_MASK_0_PIX0_ENABLE,
			       ispif->base + FUNC0(vfe));
		break;
	case RDI0:
		val = FUNC6(ispif->base + FUNC3(vfe));
		val &= ~ISPIF_VFE_m_IRQ_MASK_0_RDI0_MASK;
		if (enable)
			val |= ISPIF_VFE_m_IRQ_MASK_0_RDI0_ENABLE;
		FUNC8(val, ispif->base + FUNC3(vfe));
		FUNC8(ISPIF_VFE_m_IRQ_MASK_0_RDI0_ENABLE,
			       ispif->base + FUNC0(vfe));
		break;
	case PIX1:
		val = FUNC6(ispif->base + FUNC4(vfe));
		val &= ~ISPIF_VFE_m_IRQ_MASK_1_PIX1_MASK;
		if (enable)
			val |= ISPIF_VFE_m_IRQ_MASK_1_PIX1_ENABLE;
		FUNC8(val, ispif->base + FUNC4(vfe));
		FUNC8(ISPIF_VFE_m_IRQ_MASK_1_PIX1_ENABLE,
			       ispif->base + FUNC1(vfe));
		break;
	case RDI1:
		val = FUNC6(ispif->base + FUNC4(vfe));
		val &= ~ISPIF_VFE_m_IRQ_MASK_1_RDI1_MASK;
		if (enable)
			val |= ISPIF_VFE_m_IRQ_MASK_1_RDI1_ENABLE;
		FUNC8(val, ispif->base + FUNC4(vfe));
		FUNC8(ISPIF_VFE_m_IRQ_MASK_1_RDI1_ENABLE,
			       ispif->base + FUNC1(vfe));
		break;
	case RDI2:
		val = FUNC6(ispif->base + FUNC5(vfe));
		val &= ~ISPIF_VFE_m_IRQ_MASK_2_RDI2_MASK;
		if (enable)
			val |= ISPIF_VFE_m_IRQ_MASK_2_RDI2_ENABLE;
		FUNC8(val, ispif->base + FUNC5(vfe));
		FUNC8(ISPIF_VFE_m_IRQ_MASK_2_RDI2_ENABLE,
			       ispif->base + FUNC2(vfe));
		break;
	}

	FUNC7(0x1, ispif->base + ISPIF_IRQ_GLOBAL_CLEAR_CMD);
}