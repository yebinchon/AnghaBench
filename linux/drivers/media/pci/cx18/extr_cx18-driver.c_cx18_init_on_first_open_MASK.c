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
typedef  int v4l2_std_id ;
struct v4l2_frequency {int frequency; int /*<<< orphan*/  type; scalar_t__ tuner; } ;
struct cx18_open_id {struct cx18* cx; } ;
struct cx18 {int std; int active_input; int tuner_std; int /*<<< orphan*/  sd_av; int /*<<< orphan*/  i_flags; } ;

/* Variables and functions */
 int CX18_APU_ENCODING_METHOD_MPEG ; 
 int /*<<< orphan*/  CX18_APU_RESETAI ; 
 int /*<<< orphan*/  CX18_APU_START ; 
 int /*<<< orphan*/  CX18_APU_STOP ; 
 int /*<<< orphan*/  CX18_F_I_FAILED ; 
 int /*<<< orphan*/  CX18_F_I_INITED ; 
 int /*<<< orphan*/  CX18_F_I_LOADED_FW ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENXIO ; 
 int V4L2_STD_ALL ; 
 int V4L2_STD_NTSC_M ; 
 int V4L2_STD_NTSC_M_JP ; 
 int /*<<< orphan*/  V4L2_TUNER_ANALOG_TV ; 
 int /*<<< orphan*/  core ; 
 scalar_t__ FUNC1 (struct cx18*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct cx18_open_id*,struct v4l2_frequency*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct cx18_open_id*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct cx18_open_id*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cx18*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  load_fw ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(struct cx18 *cx)
{
	int video_input;
	int fw_retry_count = 3;
	struct v4l2_frequency vf;
	struct cx18_open_id fh;
	v4l2_std_id std;

	fh.cx = cx;

	if (FUNC8(CX18_F_I_FAILED, &cx->i_flags))
		return -ENXIO;

	if (FUNC7(CX18_F_I_INITED, &cx->i_flags))
		return 0;

	while (--fw_retry_count > 0) {
		/* load firmware */
		if (FUNC1(cx) == 0)
			break;
		if (fw_retry_count > 1)
			FUNC0("Retry loading firmware\n");
	}

	if (fw_retry_count == 0) {
		FUNC6(CX18_F_I_FAILED, &cx->i_flags);
		return -ENXIO;
	}
	FUNC6(CX18_F_I_LOADED_FW, &cx->i_flags);

	/*
	 * Init the firmware twice to work around a silicon bug
	 * with the digital TS.
	 *
	 * The second firmware load requires us to normalize the APU state,
	 * or the audio for the first analog capture will be badly incorrect.
	 *
	 * I can't seem to call APU_RESETAI and have it succeed without the
	 * APU capturing audio, so we start and stop it here to do the reset
	 */

	/* MPEG Encoding, 224 kbps, MPEG Layer II, 48 ksps */
	FUNC5(cx, CX18_APU_START, 2, CX18_APU_ENCODING_METHOD_MPEG|0xb9, 0);
	FUNC5(cx, CX18_APU_RESETAI, 0);
	FUNC5(cx, CX18_APU_STOP, 1, CX18_APU_ENCODING_METHOD_MPEG);

	fw_retry_count = 3;
	while (--fw_retry_count > 0) {
		/* load firmware */
		if (FUNC1(cx) == 0)
			break;
		if (fw_retry_count > 1)
			FUNC0("Retry loading firmware\n");
	}

	if (fw_retry_count == 0) {
		FUNC6(CX18_F_I_FAILED, &cx->i_flags);
		return -ENXIO;
	}

	/*
	 * The second firmware load requires us to normalize the APU state,
	 * or the audio for the first analog capture will be badly incorrect.
	 *
	 * I can't seem to call APU_RESETAI and have it succeed without the
	 * APU capturing audio, so we start and stop it here to do the reset
	 */

	/* MPEG Encoding, 224 kbps, MPEG Layer II, 48 ksps */
	FUNC5(cx, CX18_APU_START, 2, CX18_APU_ENCODING_METHOD_MPEG|0xb9, 0);
	FUNC5(cx, CX18_APU_RESETAI, 0);
	FUNC5(cx, CX18_APU_STOP, 1, CX18_APU_ENCODING_METHOD_MPEG);

	/* Init the A/V decoder, if it hasn't been already */
	FUNC9(cx->sd_av, core, load_fw);

	vf.tuner = 0;
	vf.type = V4L2_TUNER_ANALOG_TV;
	vf.frequency = 6400; /* the tuner 'baseline' frequency */

	/* Set initial frequency. For PAL/SECAM broadcasts no
	   'default' channel exists AFAIK. */
	if (cx->std == V4L2_STD_NTSC_M_JP)
		vf.frequency = 1460;	/* ch. 1 91250*16/1000 */
	else if (cx->std & V4L2_STD_NTSC_M)
		vf.frequency = 1076;	/* ch. 4 67250*16/1000 */

	video_input = cx->active_input;
	cx->active_input++;	/* Force update of input */
	FUNC3(NULL, &fh, video_input);

	/* Let the VIDIOC_S_STD ioctl do all the work, keeps the code
	   in one place. */
	cx->std++;		/* Force full standard initialization */
	std = (cx->tuner_std == V4L2_STD_ALL) ? V4L2_STD_NTSC_M : cx->tuner_std;
	FUNC4(NULL, &fh, std);
	FUNC2(NULL, &fh, &vf);
	return 0;
}