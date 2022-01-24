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
struct v4l2_device {int dummy; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct ivtv* private_data; int /*<<< orphan*/  hw; } ;
struct snd_ivtv_card {struct snd_pcm_substream* capture_pcm_substream; struct v4l2_device* v4l2_dev; } ;
struct ivtv_stream {int /*<<< orphan*/  s_flags; int /*<<< orphan*/  type; int /*<<< orphan*/  vdev; } ;
struct ivtv_open_id {int /*<<< orphan*/  fh; int /*<<< orphan*/  type; struct ivtv* itv; } ;
struct ivtv {int /*<<< orphan*/  pcm_announce_callback; struct ivtv_stream* streams; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENXIO ; 
 size_t IVTV_ENC_STREAM_TYPE_PCM ; 
 int /*<<< orphan*/  IVTV_F_S_STREAMING ; 
 int /*<<< orphan*/  IVTV_F_S_STREAMOFF ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIODS ; 
 int /*<<< orphan*/  ivtv_alsa_announce_pcm_data ; 
 scalar_t__ FUNC0 (struct ivtv_open_id*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ivtv*) ; 
 int FUNC2 (struct ivtv_stream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  snd_ivtv_hw_capture ; 
 int /*<<< orphan*/  FUNC4 (struct snd_ivtv_card*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_ivtv_card*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 struct snd_ivtv_card* FUNC7 (struct snd_pcm_substream*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ivtv* FUNC10 (struct v4l2_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct snd_pcm_substream *substream)
{
	struct snd_ivtv_card *itvsc = FUNC7(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct v4l2_device *v4l2_dev = itvsc->v4l2_dev;
	struct ivtv *itv = FUNC10(v4l2_dev);
	struct ivtv_stream *s;
	struct ivtv_open_id item;
	int ret;

	/* Instruct the CX2341[56] to start sending packets */
	FUNC4(itvsc);

	if (FUNC1(itv)) {
		FUNC5(itvsc);
		return -ENXIO;
	}

	s = &itv->streams[IVTV_ENC_STREAM_TYPE_PCM];

	FUNC12(&item.fh, &s->vdev);
	item.itv = itv;
	item.type = s->type;

	/* See if the stream is available */
	if (FUNC0(&item, item.type)) {
		/* No, it's already in use */
		FUNC11(&item.fh);
		FUNC5(itvsc);
		return -EBUSY;
	}

	if (FUNC9(IVTV_F_S_STREAMOFF, &s->s_flags) ||
	    FUNC8(IVTV_F_S_STREAMING, &s->s_flags)) {
		/* We're already streaming.  No additional action required */
		FUNC5(itvsc);
		return 0;
	}


	runtime->hw = snd_ivtv_hw_capture;
	FUNC6(runtime, SNDRV_PCM_HW_PARAM_PERIODS);
	itvsc->capture_pcm_substream = substream;
	runtime->private_data = itv;

	itv->pcm_announce_callback = ivtv_alsa_announce_pcm_data;

	/* Not currently streaming, so start it up */
	FUNC3(IVTV_F_S_STREAMING, &s->s_flags);
	ret = FUNC2(s);
	FUNC5(itvsc);

	return ret;
}