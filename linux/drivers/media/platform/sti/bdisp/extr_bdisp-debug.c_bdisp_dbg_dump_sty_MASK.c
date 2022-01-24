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
#define  BDISP_ARGB8888 133 
#define  BDISP_NV12 132 
#define  BDISP_RGB565 131 
#define  BDISP_RGB888 130 
#define  BDISP_XRGB8888 129 
#define  BDISP_YUV_3B 128 
 int BLT_S1TY_A1_SUBSET ; 
 int BLT_S1TY_CHROMA_EXT ; 
 int BLT_S1TY_RGB_EXP ; 
 int BLT_S3TY_BLANK_ACC ; 
 int BLT_TTY_ALPHA_R ; 
 int BLT_TTY_BIG_END ; 
 int BLT_TTY_COL_MASK ; 
 int BLT_TTY_COL_SHIFT ; 
 int BLT_TTY_HSO ; 
 int BLT_TTY_MB ; 
 int BLT_TTY_VSO ; 
 int BTL_S1TY_SUBBYTE ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(struct seq_file *s,
			       u32 val, u32 addr, char *name)
{
	bool s1, s2, s3;

	FUNC0(s, "%s\t0x%08X\t", name, val);

	if (!addr || !name || (FUNC3(name) < 2))
		goto done;

	s1 = name[FUNC3(name) - 1] == '1';
	s2 = name[FUNC3(name) - 1] == '2';
	s3 = name[FUNC3(name) - 1] == '3';

	FUNC0(s, "Pitch=%d - ", val & 0xFFFF);

	switch ((val & BLT_TTY_COL_MASK) >> BLT_TTY_COL_SHIFT) {
	case BDISP_RGB565:
		FUNC2(s, "RGB565 - ");
		break;
	case BDISP_RGB888:
		FUNC2(s, "RGB888 - ");
		break;
	case BDISP_XRGB8888:
		FUNC2(s, "xRGB888 - ");
		break;
	case BDISP_ARGB8888:
		FUNC2(s, "ARGB888 - ");
		break;
	case BDISP_NV12:
		FUNC2(s, "NV12 - ");
		break;
	case BDISP_YUV_3B:
		FUNC2(s, "YUV420P - ");
		break;
	default:
		FUNC2(s, "ColorFormat ??? - ");
		break;
	}

	if ((val & BLT_TTY_ALPHA_R) && !s3)
		FUNC2(s, "AlphaRange - ");
	if ((val & BLT_S1TY_A1_SUBSET) && !s3)
		FUNC2(s, "A1SubSet - ");
	if ((val & BLT_TTY_MB) && !s1)
		FUNC2(s, "MB - ");
	if (val & BLT_TTY_HSO)
		FUNC2(s, "HSO inverse - ");
	if (val & BLT_TTY_VSO)
		FUNC2(s, "VSO inverse - ");
	if ((val & BLT_S1TY_CHROMA_EXT) && (s1 || s2))
		FUNC2(s, "ChromaExt - ");
	if ((val & BLT_S3TY_BLANK_ACC) && s3)
		FUNC2(s, "Blank Acc - ");
	if ((val & BTL_S1TY_SUBBYTE) && !s3)
		FUNC2(s, "SubByte - ");
	if ((val & BLT_S1TY_RGB_EXP) && !s3)
		FUNC2(s, "RGBExpand - ");
	if ((val & BLT_TTY_BIG_END) && !s3)
		FUNC2(s, "BigEndian - ");

done:
	FUNC1(s, '\n');
}