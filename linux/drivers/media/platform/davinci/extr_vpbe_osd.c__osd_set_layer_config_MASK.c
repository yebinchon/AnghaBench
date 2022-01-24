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
struct osd_state {int /*<<< orphan*/  vpbe_type; } ;
struct osd_layer_config {int pixfmt; int line_length; int xpos; int xsize; int ypos; int ysize; int /*<<< orphan*/  interlaced; } ;
typedef  enum osd_layer { ____Placeholder_osd_layer } osd_layer ;

/* Variables and functions */
 int /*<<< orphan*/  OSDWIN_OSD0 ; 
 int /*<<< orphan*/  OSDWIN_OSD1 ; 
 int /*<<< orphan*/  OSD_MISCCTL ; 
 int OSD_MISCCTL_S420D ; 
 int /*<<< orphan*/  OSD_OSDWIN0MD ; 
 int OSD_OSDWIN0MD_BMP0MD ; 
 int OSD_OSDWIN0MD_BMP0MD_SHIFT ; 
 int OSD_OSDWIN0MD_BMW0 ; 
 int OSD_OSDWIN0MD_BMW0_SHIFT ; 
 int OSD_OSDWIN0MD_OFF0 ; 
 int OSD_OSDWIN0MD_RGB0E ; 
 int /*<<< orphan*/  OSD_OSDWIN0OFST ; 
 int /*<<< orphan*/  OSD_OSDWIN0XL ; 
 int /*<<< orphan*/  OSD_OSDWIN0XP ; 
 int /*<<< orphan*/  OSD_OSDWIN0YL ; 
 int /*<<< orphan*/  OSD_OSDWIN0YP ; 
 int /*<<< orphan*/  OSD_OSDWIN1MD ; 
 int OSD_OSDWIN1MD_ATN1E ; 
 int OSD_OSDWIN1MD_BLND1 ; 
 int OSD_OSDWIN1MD_BMP1MD ; 
 int OSD_OSDWIN1MD_BMP1MD_SHIFT ; 
 int OSD_OSDWIN1MD_BMW1 ; 
 int OSD_OSDWIN1MD_BMW1_SHIFT ; 
 int OSD_OSDWIN1MD_CLUTS1 ; 
 int OSD_OSDWIN1MD_OFF1 ; 
 int OSD_OSDWIN1MD_RGB1E ; 
 int OSD_OSDWIN1MD_TE1 ; 
 int /*<<< orphan*/  OSD_OSDWIN1OFST ; 
 int /*<<< orphan*/  OSD_OSDWIN1XL ; 
 int /*<<< orphan*/  OSD_OSDWIN1XP ; 
 int /*<<< orphan*/  OSD_OSDWIN1YL ; 
 int /*<<< orphan*/  OSD_OSDWIN1YP ; 
 int /*<<< orphan*/  OSD_VIDWIN0OFST ; 
 int /*<<< orphan*/  OSD_VIDWIN0XL ; 
 int /*<<< orphan*/  OSD_VIDWIN0XP ; 
 int /*<<< orphan*/  OSD_VIDWIN0YL ; 
 int /*<<< orphan*/  OSD_VIDWIN0YP ; 
 int /*<<< orphan*/  OSD_VIDWIN1OFST ; 
 int /*<<< orphan*/  OSD_VIDWIN1XL ; 
 int /*<<< orphan*/  OSD_VIDWIN1XP ; 
 int /*<<< orphan*/  OSD_VIDWIN1YL ; 
 int /*<<< orphan*/  OSD_VIDWIN1YP ; 
 int /*<<< orphan*/  OSD_VIDWINMD ; 
 int OSD_VIDWINMD_VFF0 ; 
 int OSD_VIDWINMD_VFF1 ; 
#define  PIXFMT_1BPP 139 
#define  PIXFMT_2BPP 138 
#define  PIXFMT_4BPP 137 
#define  PIXFMT_8BPP 136 
 int PIXFMT_NV12 ; 
 int PIXFMT_OSD_ATTR ; 
#define  PIXFMT_RGB565 135 
#define  PIXFMT_RGB888 134 
#define  PIXFMT_YCBCRI 133 
#define  PIXFMT_YCRCBI 132 
 int /*<<< orphan*/  VPBE_VERSION_1 ; 
 int /*<<< orphan*/  VPBE_VERSION_2 ; 
 int /*<<< orphan*/  VPBE_VERSION_3 ; 
#define  WIN_OSD0 131 
#define  WIN_OSD1 130 
#define  WIN_VID0 129 
#define  WIN_VID1 128 
 int /*<<< orphan*/  FUNC0 (struct osd_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct osd_state*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct osd_state*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct osd_state*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct osd_state *sd, enum osd_layer layer,
				  const struct osd_layer_config *lconfig)
{
	u32 winmd = 0, winmd_mask = 0, bmw = 0;

	FUNC1(sd, lconfig->pixfmt);

	switch (layer) {
	case WIN_OSD0:
		if (sd->vpbe_type == VPBE_VERSION_1) {
			winmd_mask |= OSD_OSDWIN0MD_RGB0E;
			if (lconfig->pixfmt == PIXFMT_RGB565)
				winmd |= OSD_OSDWIN0MD_RGB0E;
		} else if ((sd->vpbe_type == VPBE_VERSION_3) ||
		  (sd->vpbe_type == VPBE_VERSION_2)) {
			winmd_mask |= OSD_OSDWIN0MD_BMP0MD;
			switch (lconfig->pixfmt) {
			case PIXFMT_RGB565:
					winmd |= (1 <<
					OSD_OSDWIN0MD_BMP0MD_SHIFT);
					break;
			case PIXFMT_RGB888:
				winmd |= (2 << OSD_OSDWIN0MD_BMP0MD_SHIFT);
				FUNC0(sd, OSDWIN_OSD0);
				break;
			case PIXFMT_YCBCRI:
			case PIXFMT_YCRCBI:
				winmd |= (3 << OSD_OSDWIN0MD_BMP0MD_SHIFT);
				break;
			default:
				break;
			}
		}

		winmd_mask |= OSD_OSDWIN0MD_BMW0 | OSD_OSDWIN0MD_OFF0;

		switch (lconfig->pixfmt) {
		case PIXFMT_1BPP:
			bmw = 0;
			break;
		case PIXFMT_2BPP:
			bmw = 1;
			break;
		case PIXFMT_4BPP:
			bmw = 2;
			break;
		case PIXFMT_8BPP:
			bmw = 3;
			break;
		default:
			break;
		}
		winmd |= (bmw << OSD_OSDWIN0MD_BMW0_SHIFT);

		if (lconfig->interlaced)
			winmd |= OSD_OSDWIN0MD_OFF0;

		FUNC2(sd, winmd_mask, winmd, OSD_OSDWIN0MD);
		FUNC3(sd, lconfig->line_length >> 5, OSD_OSDWIN0OFST);
		FUNC3(sd, lconfig->xpos, OSD_OSDWIN0XP);
		FUNC3(sd, lconfig->xsize, OSD_OSDWIN0XL);
		if (lconfig->interlaced) {
			FUNC3(sd, lconfig->ypos >> 1, OSD_OSDWIN0YP);
			FUNC3(sd, lconfig->ysize >> 1, OSD_OSDWIN0YL);
		} else {
			FUNC3(sd, lconfig->ypos, OSD_OSDWIN0YP);
			FUNC3(sd, lconfig->ysize, OSD_OSDWIN0YL);
		}
		break;
	case WIN_VID0:
		winmd_mask |= OSD_VIDWINMD_VFF0;
		if (lconfig->interlaced)
			winmd |= OSD_VIDWINMD_VFF0;

		FUNC2(sd, winmd_mask, winmd, OSD_VIDWINMD);
		FUNC3(sd, lconfig->line_length >> 5, OSD_VIDWIN0OFST);
		FUNC3(sd, lconfig->xpos, OSD_VIDWIN0XP);
		FUNC3(sd, lconfig->xsize, OSD_VIDWIN0XL);
		/*
		 * For YUV420P format the register contents are
		 * duplicated in both VID registers
		 */
		if ((sd->vpbe_type == VPBE_VERSION_2) &&
				(lconfig->pixfmt == PIXFMT_NV12)) {
			/* other window also */
			if (lconfig->interlaced) {
				winmd_mask |= OSD_VIDWINMD_VFF1;
				winmd |= OSD_VIDWINMD_VFF1;
				FUNC2(sd, winmd_mask, winmd,
					  OSD_VIDWINMD);
			}

			FUNC2(sd, OSD_MISCCTL_S420D,
				    OSD_MISCCTL_S420D, OSD_MISCCTL);
			FUNC3(sd, lconfig->line_length >> 5,
				  OSD_VIDWIN1OFST);
			FUNC3(sd, lconfig->xpos, OSD_VIDWIN1XP);
			FUNC3(sd, lconfig->xsize, OSD_VIDWIN1XL);
			/*
			  * if NV21 pixfmt and line length not 32B
			  * aligned (e.g. NTSC), Need to set window
			  * X pixel size to be 32B aligned as well
			  */
			if (lconfig->xsize % 32) {
				FUNC3(sd,
					  ((lconfig->xsize + 31) & ~31),
					  OSD_VIDWIN1XL);
				FUNC3(sd,
					  ((lconfig->xsize + 31) & ~31),
					  OSD_VIDWIN0XL);
			}
		} else if ((sd->vpbe_type == VPBE_VERSION_2) &&
				(lconfig->pixfmt != PIXFMT_NV12)) {
			FUNC2(sd, OSD_MISCCTL_S420D, ~OSD_MISCCTL_S420D,
						OSD_MISCCTL);
		}

		if (lconfig->interlaced) {
			FUNC3(sd, lconfig->ypos >> 1, OSD_VIDWIN0YP);
			FUNC3(sd, lconfig->ysize >> 1, OSD_VIDWIN0YL);
			if ((sd->vpbe_type == VPBE_VERSION_2) &&
				lconfig->pixfmt == PIXFMT_NV12) {
				FUNC3(sd, lconfig->ypos >> 1,
					  OSD_VIDWIN1YP);
				FUNC3(sd, lconfig->ysize >> 1,
					  OSD_VIDWIN1YL);
			}
		} else {
			FUNC3(sd, lconfig->ypos, OSD_VIDWIN0YP);
			FUNC3(sd, lconfig->ysize, OSD_VIDWIN0YL);
			if ((sd->vpbe_type == VPBE_VERSION_2) &&
				lconfig->pixfmt == PIXFMT_NV12) {
				FUNC3(sd, lconfig->ypos, OSD_VIDWIN1YP);
				FUNC3(sd, lconfig->ysize, OSD_VIDWIN1YL);
			}
		}
		break;
	case WIN_OSD1:
		/*
		 * The caller must ensure that OSD1 is disabled prior to
		 * switching from a normal mode to attribute mode or from
		 * attribute mode to a normal mode.
		 */
		if (lconfig->pixfmt == PIXFMT_OSD_ATTR) {
			if (sd->vpbe_type == VPBE_VERSION_1) {
				winmd_mask |= OSD_OSDWIN1MD_ATN1E |
				OSD_OSDWIN1MD_RGB1E | OSD_OSDWIN1MD_CLUTS1 |
				OSD_OSDWIN1MD_BLND1 | OSD_OSDWIN1MD_TE1;
			} else {
				winmd_mask |= OSD_OSDWIN1MD_BMP1MD |
				OSD_OSDWIN1MD_CLUTS1 | OSD_OSDWIN1MD_BLND1 |
				OSD_OSDWIN1MD_TE1;
			}
		} else {
			if (sd->vpbe_type == VPBE_VERSION_1) {
				winmd_mask |= OSD_OSDWIN1MD_RGB1E;
				if (lconfig->pixfmt == PIXFMT_RGB565)
					winmd |= OSD_OSDWIN1MD_RGB1E;
			} else if ((sd->vpbe_type == VPBE_VERSION_3)
				   || (sd->vpbe_type == VPBE_VERSION_2)) {
				winmd_mask |= OSD_OSDWIN1MD_BMP1MD;
				switch (lconfig->pixfmt) {
				case PIXFMT_RGB565:
					winmd |=
					    (1 << OSD_OSDWIN1MD_BMP1MD_SHIFT);
					break;
				case PIXFMT_RGB888:
					winmd |=
					    (2 << OSD_OSDWIN1MD_BMP1MD_SHIFT);
					FUNC0(sd,
							OSDWIN_OSD1);
					break;
				case PIXFMT_YCBCRI:
				case PIXFMT_YCRCBI:
					winmd |=
					    (3 << OSD_OSDWIN1MD_BMP1MD_SHIFT);
					break;
				default:
					break;
				}
			}

			winmd_mask |= OSD_OSDWIN1MD_BMW1;
			switch (lconfig->pixfmt) {
			case PIXFMT_1BPP:
				bmw = 0;
				break;
			case PIXFMT_2BPP:
				bmw = 1;
				break;
			case PIXFMT_4BPP:
				bmw = 2;
				break;
			case PIXFMT_8BPP:
				bmw = 3;
				break;
			default:
				break;
			}
			winmd |= (bmw << OSD_OSDWIN1MD_BMW1_SHIFT);
		}

		winmd_mask |= OSD_OSDWIN1MD_OFF1;
		if (lconfig->interlaced)
			winmd |= OSD_OSDWIN1MD_OFF1;

		FUNC2(sd, winmd_mask, winmd, OSD_OSDWIN1MD);
		FUNC3(sd, lconfig->line_length >> 5, OSD_OSDWIN1OFST);
		FUNC3(sd, lconfig->xpos, OSD_OSDWIN1XP);
		FUNC3(sd, lconfig->xsize, OSD_OSDWIN1XL);
		if (lconfig->interlaced) {
			FUNC3(sd, lconfig->ypos >> 1, OSD_OSDWIN1YP);
			FUNC3(sd, lconfig->ysize >> 1, OSD_OSDWIN1YL);
		} else {
			FUNC3(sd, lconfig->ypos, OSD_OSDWIN1YP);
			FUNC3(sd, lconfig->ysize, OSD_OSDWIN1YL);
		}
		break;
	case WIN_VID1:
		winmd_mask |= OSD_VIDWINMD_VFF1;
		if (lconfig->interlaced)
			winmd |= OSD_VIDWINMD_VFF1;

		FUNC2(sd, winmd_mask, winmd, OSD_VIDWINMD);
		FUNC3(sd, lconfig->line_length >> 5, OSD_VIDWIN1OFST);
		FUNC3(sd, lconfig->xpos, OSD_VIDWIN1XP);
		FUNC3(sd, lconfig->xsize, OSD_VIDWIN1XL);
		/*
		 * For YUV420P format the register contents are
		 * duplicated in both VID registers
		 */
		if (sd->vpbe_type == VPBE_VERSION_2) {
			if (lconfig->pixfmt == PIXFMT_NV12) {
				/* other window also */
				if (lconfig->interlaced) {
					winmd_mask |= OSD_VIDWINMD_VFF0;
					winmd |= OSD_VIDWINMD_VFF0;
					FUNC2(sd, winmd_mask, winmd,
						  OSD_VIDWINMD);
				}
				FUNC2(sd, OSD_MISCCTL_S420D,
					   OSD_MISCCTL_S420D, OSD_MISCCTL);
				FUNC3(sd, lconfig->line_length >> 5,
					  OSD_VIDWIN0OFST);
				FUNC3(sd, lconfig->xpos, OSD_VIDWIN0XP);
				FUNC3(sd, lconfig->xsize, OSD_VIDWIN0XL);
			} else {
				FUNC2(sd, OSD_MISCCTL_S420D,
					   ~OSD_MISCCTL_S420D, OSD_MISCCTL);
			}
		}

		if (lconfig->interlaced) {
			FUNC3(sd, lconfig->ypos >> 1, OSD_VIDWIN1YP);
			FUNC3(sd, lconfig->ysize >> 1, OSD_VIDWIN1YL);
			if ((sd->vpbe_type == VPBE_VERSION_2) &&
				lconfig->pixfmt == PIXFMT_NV12) {
				FUNC3(sd, lconfig->ypos >> 1,
					  OSD_VIDWIN0YP);
				FUNC3(sd, lconfig->ysize >> 1,
					  OSD_VIDWIN0YL);
			}
		} else {
			FUNC3(sd, lconfig->ypos, OSD_VIDWIN1YP);
			FUNC3(sd, lconfig->ysize, OSD_VIDWIN1YL);
			if ((sd->vpbe_type == VPBE_VERSION_2) &&
				lconfig->pixfmt == PIXFMT_NV12) {
				FUNC3(sd, lconfig->ypos, OSD_VIDWIN0YP);
				FUNC3(sd, lconfig->ysize, OSD_VIDWIN0YL);
			}
		}
		break;
	}
}