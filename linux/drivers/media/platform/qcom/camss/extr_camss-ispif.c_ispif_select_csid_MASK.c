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
struct ispif_device {scalar_t__ base; } ;
typedef  enum ispif_intf { ____Placeholder_ispif_intf } ispif_intf ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
#define  PIX0 132 
#define  PIX1 131 
#define  RDI0 130 
#define  RDI1 129 
#define  RDI2 128 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct ispif_device *ispif, enum ispif_intf intf,
			      u8 csid, u8 vfe, u8 enable)
{
	u32 val;

	val = FUNC2(ispif->base + FUNC1(vfe));
	switch (intf) {
	case PIX0:
		val &= ~(FUNC0(1) | FUNC0(0));
		if (enable)
			val |= csid;
		break;
	case RDI0:
		val &= ~(FUNC0(5) | FUNC0(4));
		if (enable)
			val |= (csid << 4);
		break;
	case PIX1:
		val &= ~(FUNC0(9) | FUNC0(8));
		if (enable)
			val |= (csid << 8);
		break;
	case RDI1:
		val &= ~(FUNC0(13) | FUNC0(12));
		if (enable)
			val |= (csid << 12);
		break;
	case RDI2:
		val &= ~(FUNC0(21) | FUNC0(20));
		if (enable)
			val |= (csid << 20);
		break;
	}

	FUNC3(val, ispif->base + FUNC1(vfe));
}