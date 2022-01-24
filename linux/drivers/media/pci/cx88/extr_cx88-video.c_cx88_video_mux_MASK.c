#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cx88_core {unsigned int input; int /*<<< orphan*/  tvaudio; scalar_t__ sd_wm8775; } ;
struct TYPE_2__ {int vmux; int gpio0; int gpio1; int gpio2; int gpio3; int type; scalar_t__ audioroute; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUD_CTL ; 
 int /*<<< orphan*/  AUD_I2SCNTL ; 
 int CX88_VMUX_CABLE ; 
#define  CX88_VMUX_SVIDEO 128 
 int CX88_VMUX_TELEVISION ; 
 int EN_I2SIN_ENABLE ; 
 TYPE_1__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  MO_AFECFG_IO ; 
 int /*<<< orphan*/  MO_FILTER_EVEN ; 
 int /*<<< orphan*/  MO_FILTER_ODD ; 
 int /*<<< orphan*/  MO_GP0_IO ; 
 int /*<<< orphan*/  MO_GP1_IO ; 
 int /*<<< orphan*/  MO_GP2_IO ; 
 int /*<<< orphan*/  MO_GP3_IO ; 
 int /*<<< orphan*/  MO_INPUT_FORMAT ; 
 int /*<<< orphan*/  WW_I2SADC ; 
 int /*<<< orphan*/  audio ; 
 int /*<<< orphan*/  FUNC1 (struct cx88_core*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cx88_core*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,unsigned int,int,int,int,int,int) ; 
 int /*<<< orphan*/  s_routing ; 

int FUNC8(struct cx88_core *core, unsigned int input)
{
	/* struct cx88_core *core = dev->core; */

	FUNC7(1, "video_mux: %d [vmux=%d,gpio=0x%x,0x%x,0x%x,0x%x]\n",
		input, FUNC0(input).vmux,
		FUNC0(input).gpio0, FUNC0(input).gpio1,
		FUNC0(input).gpio2, FUNC0(input).gpio3);
	core->input = input;
	FUNC3(MO_INPUT_FORMAT, 0x03 << 14, FUNC0(input).vmux << 14);
	FUNC6(MO_GP3_IO, FUNC0(input).gpio3);
	FUNC6(MO_GP0_IO, FUNC0(input).gpio0);
	FUNC6(MO_GP1_IO, FUNC0(input).gpio1);
	FUNC6(MO_GP2_IO, FUNC0(input).gpio2);

	switch (FUNC0(input).type) {
	case CX88_VMUX_SVIDEO:
		FUNC5(MO_AFECFG_IO,    0x00000001);
		FUNC5(MO_INPUT_FORMAT, 0x00010010);
		FUNC5(MO_FILTER_EVEN,  0x00002020);
		FUNC5(MO_FILTER_ODD,   0x00002020);
		break;
	default:
		FUNC4(MO_AFECFG_IO,    0x00000001);
		FUNC4(MO_INPUT_FORMAT, 0x00010010);
		FUNC4(MO_FILTER_EVEN,  0x00002020);
		FUNC4(MO_FILTER_ODD,   0x00002020);
		break;
	}

	/*
	 * if there are audioroutes defined, we have an external
	 * ADC to deal with audio
	 */
	if (FUNC0(input).audioroute) {
		/*
		 * The wm8775 module has the "2" route hardwired into
		 * the initialization. Some boards may use different
		 * routes for different inputs. HVR-1300 surely does
		 */
		if (core->sd_wm8775) {
			FUNC1(core, audio, s_routing,
				 FUNC0(input).audioroute, 0, 0);
		}
		/*
		 * cx2388's C-ADC is connected to the tuner only.
		 * When used with S-Video, that ADC is busy dealing with
		 * chroma, so an external must be used for baseband audio
		 */
		if (FUNC0(input).type != CX88_VMUX_TELEVISION &&
		    FUNC0(input).type != CX88_VMUX_CABLE) {
			/* "I2S ADC mode" */
			core->tvaudio = WW_I2SADC;
			FUNC2(core);
		} else {
			/* Normal mode */
			FUNC6(AUD_I2SCNTL, 0x0);
			FUNC4(AUD_CTL, EN_I2SIN_ENABLE);
		}
	}

	return 0;
}