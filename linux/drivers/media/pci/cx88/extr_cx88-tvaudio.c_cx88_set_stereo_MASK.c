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
typedef  scalar_t__ u32 ;
struct cx88_core {scalar_t__ audiomode_manual; int tvaudio; int use_nicam; scalar_t__ audiomode_current; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUD_CTL ; 
 int /*<<< orphan*/  AUD_STATUS ; 
 scalar_t__ EN_A2_FORCE_MONO1 ; 
 scalar_t__ EN_A2_FORCE_MONO2 ; 
 scalar_t__ EN_A2_FORCE_STEREO ; 
 int /*<<< orphan*/  EN_BTSC_AUTO_STEREO ; 
 int /*<<< orphan*/  EN_BTSC_FORCE_MONO ; 
 int /*<<< orphan*/  EN_BTSC_FORCE_SAP ; 
 int /*<<< orphan*/  EN_BTSC_FORCE_STEREO ; 
 scalar_t__ EN_FMRADIO_AUTO_STEREO ; 
 scalar_t__ EN_FMRADIO_FORCE_MONO ; 
 int /*<<< orphan*/  EN_NICAM_FORCE_MONO1 ; 
 int /*<<< orphan*/  EN_NICAM_FORCE_MONO2 ; 
 int /*<<< orphan*/  EN_NICAM_FORCE_STEREO ; 
 int /*<<< orphan*/  SHADOW_AUD_VOL_CTL ; 
 scalar_t__ UNSET ; 
#define  V4L2_TUNER_MODE_LANG1 143 
#define  V4L2_TUNER_MODE_LANG1_LANG2 142 
#define  V4L2_TUNER_MODE_LANG2 141 
#define  V4L2_TUNER_MODE_MONO 140 
#define  V4L2_TUNER_MODE_STEREO 139 
#define  WW_BG 138 
#define  WW_BTSC 137 
#define  WW_DK 136 
#define  WW_EIAJ 135 
#define  WW_FM 134 
#define  WW_I 133 
#define  WW_I2SADC 132 
#define  WW_I2SPT 131 
#define  WW_L 130 
#define  WW_M 129 
#define  WW_NONE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cx88_core*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct cx88_core*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cx88_core*,int /*<<< orphan*/ ) ; 

void FUNC7(struct cx88_core *core, u32 mode, int manual)
{
	u32 ctl = UNSET;
	u32 mask = UNSET;

	if (manual) {
		core->audiomode_manual = mode;
	} else {
		if (core->audiomode_manual != UNSET)
			return;
	}
	core->audiomode_current = mode;

	switch (core->tvaudio) {
	case WW_BTSC:
		switch (mode) {
		case V4L2_TUNER_MODE_MONO:
			FUNC5(core, 0, EN_BTSC_FORCE_MONO);
			break;
		case V4L2_TUNER_MODE_LANG1:
			FUNC5(core, 0, EN_BTSC_AUTO_STEREO);
			break;
		case V4L2_TUNER_MODE_LANG2:
			FUNC5(core, 1, EN_BTSC_FORCE_SAP);
			break;
		case V4L2_TUNER_MODE_STEREO:
		case V4L2_TUNER_MODE_LANG1_LANG2:
			FUNC5(core, 0, EN_BTSC_FORCE_STEREO);
			break;
		}
		break;
	case WW_BG:
	case WW_DK:
	case WW_M:
	case WW_I:
	case WW_L:
		if (core->use_nicam == 1) {
			switch (mode) {
			case V4L2_TUNER_MODE_MONO:
			case V4L2_TUNER_MODE_LANG1:
				FUNC6(core,
							 EN_NICAM_FORCE_MONO1);
				break;
			case V4L2_TUNER_MODE_LANG2:
				FUNC6(core,
							 EN_NICAM_FORCE_MONO2);
				break;
			case V4L2_TUNER_MODE_STEREO:
			case V4L2_TUNER_MODE_LANG1_LANG2:
				FUNC6(core,
							 EN_NICAM_FORCE_STEREO);
				break;
			}
		} else {
			if ((core->tvaudio == WW_I) ||
			    (core->tvaudio == WW_L)) {
				/* fall back to fm / am mono */
				FUNC4(core, EN_A2_FORCE_MONO1);
			} else {
				/* TODO: Add A2 autodection */
				mask = 0x3f;
				switch (mode) {
				case V4L2_TUNER_MODE_MONO:
				case V4L2_TUNER_MODE_LANG1:
					ctl = EN_A2_FORCE_MONO1;
					break;
				case V4L2_TUNER_MODE_LANG2:
					ctl = EN_A2_FORCE_MONO2;
					break;
				case V4L2_TUNER_MODE_STEREO:
				case V4L2_TUNER_MODE_LANG1_LANG2:
					ctl = EN_A2_FORCE_STEREO;
					break;
				}
			}
		}
		break;
	case WW_FM:
		switch (mode) {
		case V4L2_TUNER_MODE_MONO:
			ctl = EN_FMRADIO_FORCE_MONO;
			mask = 0x3f;
			break;
		case V4L2_TUNER_MODE_STEREO:
			ctl = EN_FMRADIO_AUTO_STEREO;
			mask = 0x3f;
			break;
		}
		break;
	case WW_I2SADC:
	case WW_NONE:
	case WW_EIAJ:
	case WW_I2SPT:
		/* DO NOTHING */
		break;
	}

	if (ctl != UNSET) {
		FUNC3("cx88_set_stereo: mask 0x%x, ctl 0x%x [status=0x%x,ctl=0x%x,vol=0x%x]\n",
			mask, ctl, FUNC1(AUD_STATUS),
			FUNC1(AUD_CTL), FUNC2(SHADOW_AUD_VOL_CTL));
		FUNC0(AUD_CTL, mask, ctl);
	}
}