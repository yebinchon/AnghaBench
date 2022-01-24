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
typedef  int u32 ;
struct ispif_device {scalar_t__ base_clk_mux; } ;
typedef  enum ispif_intf { ____Placeholder_ispif_intf } ispif_intf ;

/* Variables and functions */
 scalar_t__ CSI_PIX_CLK_MUX_SEL ; 
 scalar_t__ CSI_RDI_CLK_MUX_SEL ; 
#define  PIX0 132 
#define  PIX1 131 
#define  RDI0 130 
#define  RDI1 129 
#define  RDI2 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct ispif_device *ispif,
				 enum ispif_intf intf, u8 csid,
				 u8 vfe, u8 enable)
{
	u32 val;

	switch (intf) {
	case PIX0:
		val = FUNC1(ispif->base_clk_mux + CSI_PIX_CLK_MUX_SEL);
		val &= ~(0xf << (vfe * 8));
		if (enable)
			val |= (csid << (vfe * 8));
		FUNC2(val, ispif->base_clk_mux + CSI_PIX_CLK_MUX_SEL);
		break;

	case RDI0:
		val = FUNC1(ispif->base_clk_mux + CSI_RDI_CLK_MUX_SEL);
		val &= ~(0xf << (vfe * 12));
		if (enable)
			val |= (csid << (vfe * 12));
		FUNC2(val, ispif->base_clk_mux + CSI_RDI_CLK_MUX_SEL);
		break;

	case PIX1:
		val = FUNC1(ispif->base_clk_mux + CSI_PIX_CLK_MUX_SEL);
		val &= ~(0xf << (4 + (vfe * 8)));
		if (enable)
			val |= (csid << (4 + (vfe * 8)));
		FUNC2(val, ispif->base_clk_mux + CSI_PIX_CLK_MUX_SEL);
		break;

	case RDI1:
		val = FUNC1(ispif->base_clk_mux + CSI_RDI_CLK_MUX_SEL);
		val &= ~(0xf << (4 + (vfe * 12)));
		if (enable)
			val |= (csid << (4 + (vfe * 12)));
		FUNC2(val, ispif->base_clk_mux + CSI_RDI_CLK_MUX_SEL);
		break;

	case RDI2:
		val = FUNC1(ispif->base_clk_mux + CSI_RDI_CLK_MUX_SEL);
		val &= ~(0xf << (8 + (vfe * 12)));
		if (enable)
			val |= (csid << (8 + (vfe * 12)));
		FUNC2(val, ispif->base_clk_mux + CSI_RDI_CLK_MUX_SEL);
		break;
	}

	FUNC0();
}