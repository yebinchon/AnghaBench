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
typedef  enum osd_layer { ____Placeholder_osd_layer } osd_layer ;

/* Variables and functions */
 int /*<<< orphan*/  OSD_OSDWIN0MD ; 
 int OSD_OSDWIN0MD_OACT0 ; 
 int /*<<< orphan*/  OSD_OSDWIN1MD ; 
 int OSD_OSDWIN1MD_OACT1 ; 
 int OSD_OSDWIN1MD_OASW ; 
 int /*<<< orphan*/  OSD_VIDWINMD ; 
 int OSD_VIDWINMD_ACT0 ; 
 int OSD_VIDWINMD_ACT1 ; 
#define  WIN_OSD0 131 
#define  WIN_OSD1 130 
#define  WIN_VID0 129 
#define  WIN_VID1 128 
 int /*<<< orphan*/  FUNC0 (struct osd_state*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct osd_state *sd, enum osd_layer layer)
{
	switch (layer) {
	case WIN_OSD0:
		FUNC0(sd, OSD_OSDWIN0MD_OACT0, OSD_OSDWIN0MD);
		break;
	case WIN_VID0:
		FUNC0(sd, OSD_VIDWINMD_ACT0, OSD_VIDWINMD);
		break;
	case WIN_OSD1:
		/* disable attribute mode as well as disabling the window */
		FUNC0(sd, OSD_OSDWIN1MD_OASW | OSD_OSDWIN1MD_OACT1,
			  OSD_OSDWIN1MD);
		break;
	case WIN_VID1:
		FUNC0(sd, OSD_VIDWINMD_ACT1, OSD_VIDWINMD);
		break;
	}
}