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
struct seq_file {int dummy; } ;

/* Variables and functions */
 int BLT_INS_AQLOCK ; 
 int BLT_INS_CKEY ; 
 int BLT_INS_CLIP ; 
 int BLT_INS_CLUT ; 
 int BLT_INS_DEI ; 
 int BLT_INS_FLICK ; 
 int BLT_INS_GRAD ; 
 int BLT_INS_IRQ ; 
 int BLT_INS_IVMX ; 
 int BLT_INS_OVMX ; 
 int BLT_INS_PACE ; 
 int BLT_INS_PMASK ; 
 int BLT_INS_ROTATE ; 
#define  BLT_INS_S1_CF 135 
#define  BLT_INS_S1_COPY 134 
#define  BLT_INS_S1_FILL 133 
 int BLT_INS_S1_MASK ; 
#define  BLT_INS_S1_MEM 132 
#define  BLT_INS_S1_OFF 131 
#define  BLT_INS_S2_CF 130 
 int BLT_INS_S2_MASK ; 
#define  BLT_INS_S2_MEM 129 
#define  BLT_INS_S2_OFF 128 
 int BLT_INS_S3_MASK ; 
 int BLT_INS_S3_MEM ; 
 int BLT_INS_SCALE ; 
 int BLT_INS_VC1R ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 

__attribute__((used)) static void FUNC3(struct seq_file *s, u32 val)
{
	FUNC0(s, "INS\t0x%08X\t", val);

	switch (val & BLT_INS_S1_MASK) {
	case BLT_INS_S1_OFF:
		break;
	case BLT_INS_S1_MEM:
		FUNC2(s, "SRC1=mem - ");
		break;
	case BLT_INS_S1_CF:
		FUNC2(s, "SRC1=ColorFill - ");
		break;
	case BLT_INS_S1_COPY:
		FUNC2(s, "SRC1=copy - ");
		break;
	case BLT_INS_S1_FILL:
		FUNC2(s, "SRC1=fil - ");
		break;
	default:
		FUNC2(s, "SRC1=??? - ");
		break;
	}

	switch (val & BLT_INS_S2_MASK) {
	case BLT_INS_S2_OFF:
		break;
	case BLT_INS_S2_MEM:
		FUNC2(s, "SRC2=mem - ");
		break;
	case BLT_INS_S2_CF:
		FUNC2(s, "SRC2=ColorFill - ");
		break;
	default:
		FUNC2(s, "SRC2=??? - ");
		break;
	}

	if ((val & BLT_INS_S3_MASK) == BLT_INS_S3_MEM)
		FUNC2(s, "SRC3=mem - ");

	if (val & BLT_INS_IVMX)
		FUNC2(s, "IVMX - ");
	if (val & BLT_INS_CLUT)
		FUNC2(s, "CLUT - ");
	if (val & BLT_INS_SCALE)
		FUNC2(s, "Scale - ");
	if (val & BLT_INS_FLICK)
		FUNC2(s, "Flicker - ");
	if (val & BLT_INS_CLIP)
		FUNC2(s, "Clip - ");
	if (val & BLT_INS_CKEY)
		FUNC2(s, "ColorKey - ");
	if (val & BLT_INS_OVMX)
		FUNC2(s, "OVMX - ");
	if (val & BLT_INS_DEI)
		FUNC2(s, "Deint - ");
	if (val & BLT_INS_PMASK)
		FUNC2(s, "PlaneMask - ");
	if (val & BLT_INS_VC1R)
		FUNC2(s, "VC1R - ");
	if (val & BLT_INS_ROTATE)
		FUNC2(s, "Rotate - ");
	if (val & BLT_INS_GRAD)
		FUNC2(s, "GradFill - ");
	if (val & BLT_INS_AQLOCK)
		FUNC2(s, "AQLock - ");
	if (val & BLT_INS_PACE)
		FUNC2(s, "Pace - ");
	if (val & BLT_INS_IRQ)
		FUNC2(s, "IRQ - ");

	FUNC1(s, '\n');
}