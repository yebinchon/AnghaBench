#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct v4l2_output {int /*<<< orphan*/  name; } ;
struct v4l2_input {int /*<<< orphan*/  name; } ;
struct v4l2_audioout {int dummy; } ;
struct v4l2_audio {int /*<<< orphan*/  name; } ;
struct tveeprom {int dummy; } ;
struct TYPE_9__ {int buffers; } ;
struct TYPE_8__ {int /*<<< orphan*/ * v4l2_dev; } ;
struct ivtv_stream {int buffers; int buf_size; TYPE_4__ q_free; int /*<<< orphan*/  s_flags; int /*<<< orphan*/  name; TYPE_3__ vdev; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
struct TYPE_6__ {int /*<<< orphan*/  hdl; } ;
struct ivtv {int v4l2_cap; long long card_name; int hw_flags; scalar_t__ dualwatch_stereo_mode; int output_mode; scalar_t__ vbi_data_inserted; scalar_t__ mpg_data_received; struct ivtv_stream* streams; int /*<<< orphan*/  i_flags; TYPE_2__ v4l2_dev; TYPE_1__ cxhdl; int /*<<< orphan*/  active_output; int /*<<< orphan*/  audio_input; int /*<<< orphan*/  active_input; } ;
struct file {int dummy; } ;
struct TYPE_10__ {struct ivtv* itv; } ;

/* Variables and functions */
 int CX2341X_MBOX_MAX_DATA ; 
 int /*<<< orphan*/  CX2341X_OSD_GET_STATE ; 
 int /*<<< orphan*/  IVTV_F_I_RADIO_USER ; 
 int IVTV_HW_TVEEPROM ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int IVTV_MAX_STREAMS ; 
 long long IVTV_VERSION ; 
 int OUT_NONE ; 
 int OUT_PASSTHROUGH ; 
 int V4L2_CAP_VIDEO_OUTPUT ; 
 scalar_t__ V4L2_MPEG_AUDIO_MODE_DUAL ; 
 int /*<<< orphan*/  core ; 
 TYPE_5__* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct ivtv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ivtv*,int /*<<< orphan*/ ,struct v4l2_audio*) ; 
 int /*<<< orphan*/  FUNC4 (struct ivtv*,int /*<<< orphan*/ ,struct v4l2_audioout*) ; 
 int /*<<< orphan*/  FUNC5 (struct ivtv*,int /*<<< orphan*/ ,struct v4l2_input*) ; 
 int /*<<< orphan*/  FUNC6 (struct ivtv*,int /*<<< orphan*/ ,struct v4l2_output*) ; 
 int /*<<< orphan*/  FUNC7 (struct ivtv*,struct tveeprom*) ; 
 int /*<<< orphan*/  FUNC8 (struct ivtv*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_status ; 
 int FUNC9 (int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct file *file, void *fh)
{
	struct ivtv *itv = FUNC1(fh)->itv;
	u32 data[CX2341X_MBOX_MAX_DATA];

	int has_output = itv->v4l2_cap & V4L2_CAP_VIDEO_OUTPUT;
	struct v4l2_input vidin;
	struct v4l2_audio audin;
	int i;

	FUNC0("Version: %s Card: %s\n", IVTV_VERSION, itv->card_name);
	if (itv->hw_flags & IVTV_HW_TVEEPROM) {
		struct tveeprom tv;

		FUNC7(itv, &tv);
	}
	FUNC2(itv, core, log_status);
	FUNC5(itv, itv->active_input, &vidin);
	FUNC3(itv, itv->audio_input, &audin);
	FUNC0("Video Input:  %s\n", vidin.name);
	FUNC0("Audio Input:  %s%s\n", audin.name,
		itv->dualwatch_stereo_mode == V4L2_MPEG_AUDIO_MODE_DUAL ?
			" (Bilingual)" : "");
	if (has_output) {
		struct v4l2_output vidout;
		struct v4l2_audioout audout;
		int mode = itv->output_mode;
		static const char * const output_modes[5] = {
			"None",
			"MPEG Streaming",
			"YUV Streaming",
			"YUV Frames",
			"Passthrough",
		};
		static const char * const alpha_mode[4] = {
			"None",
			"Global",
			"Local",
			"Global and Local"
		};
		static const char * const pixel_format[16] = {
			"ARGB Indexed",
			"RGB 5:6:5",
			"ARGB 1:5:5:5",
			"ARGB 1:4:4:4",
			"ARGB 8:8:8:8",
			"5",
			"6",
			"7",
			"AYUV Indexed",
			"YUV 5:6:5",
			"AYUV 1:5:5:5",
			"AYUV 1:4:4:4",
			"AYUV 8:8:8:8",
			"13",
			"14",
			"15",
		};

		FUNC6(itv, itv->active_output, &vidout);
		FUNC4(itv, 0, &audout);
		FUNC0("Video Output: %s\n", vidout.name);
		if (mode < 0 || mode > OUT_PASSTHROUGH)
			mode = OUT_NONE;
		FUNC0("Output Mode:  %s\n", output_modes[mode]);
		FUNC8(itv, data, CX2341X_OSD_GET_STATE, 0);
		data[0] |= (FUNC9(0x2a00) >> 7) & 0x40;
		FUNC0("Overlay:      %s, Alpha: %s, Pixel Format: %s\n",
			data[0] & 1 ? "On" : "Off",
			alpha_mode[(data[0] >> 1) & 0x3],
			pixel_format[(data[0] >> 3) & 0xf]);
	}
	FUNC0("Tuner:  %s\n",
		FUNC10(IVTV_F_I_RADIO_USER, &itv->i_flags) ? "Radio" : "TV");
	FUNC11(&itv->cxhdl.hdl, itv->v4l2_dev.name);
	FUNC0("Status flags:    0x%08lx\n", itv->i_flags);
	for (i = 0; i < IVTV_MAX_STREAMS; i++) {
		struct ivtv_stream *s = &itv->streams[i];

		if (s->vdev.v4l2_dev == NULL || s->buffers == 0)
			continue;
		FUNC0("Stream %s: status 0x%04lx, %d%% of %d KiB (%d buffers) in use\n", s->name, s->s_flags,
				(s->buffers - s->q_free.buffers) * 100 / s->buffers,
				(s->buffers * s->buf_size) / 1024, s->buffers);
	}

	FUNC0("Read MPG/VBI: %lld/%lld bytes\n",
			(long long)itv->mpg_data_received,
			(long long)itv->vbi_data_inserted);
	return 0;
}