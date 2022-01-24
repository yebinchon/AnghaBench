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
struct osd_state {int dummy; } ;
typedef  enum osd_win_layer { ____Placeholder_osd_win_layer } osd_win_layer ;

/* Variables and functions */
#define  OSDWIN_OSD0 129 
#define  OSDWIN_OSD1 128 
 int /*<<< orphan*/  OSD_EXTMODE ; 
 int /*<<< orphan*/  OSD_EXTMODE_OSD0BLDCHR ; 
 int /*<<< orphan*/  OSD_EXTMODE_OSD1BLDCHR ; 
 int /*<<< orphan*/  OSD_MISCCTL ; 
 int /*<<< orphan*/  OSD_MISCCTL_BLDSEL ; 
 int /*<<< orphan*/  FUNC0 (struct osd_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct osd_state *sd,
					enum osd_win_layer osdwin)
{

	FUNC0(sd, OSD_MISCCTL_BLDSEL, 0, OSD_MISCCTL);
	switch (osdwin) {
	case OSDWIN_OSD0:
		FUNC0(sd, OSD_EXTMODE_OSD0BLDCHR,
			  OSD_EXTMODE_OSD0BLDCHR, OSD_EXTMODE);
		break;
	case OSDWIN_OSD1:
		FUNC0(sd, OSD_EXTMODE_OSD1BLDCHR,
			  OSD_EXTMODE_OSD1BLDCHR, OSD_EXTMODE);
		break;
	}
}