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
struct snd_pcm_substream {int dummy; } ;
struct snd_ivtv_card {struct v4l2_device* v4l2_dev; } ;
struct ivtv_stream {int /*<<< orphan*/  s_flags; } ;
struct ivtv {int /*<<< orphan*/ * pcm_announce_callback; struct ivtv_stream* streams; } ;

/* Variables and functions */
 size_t IVTV_ENC_STREAM_TYPE_PCM ; 
 int /*<<< orphan*/  IVTV_F_S_STREAMING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ivtv_stream*) ; 
 int /*<<< orphan*/  FUNC2 (struct ivtv_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ivtv_card*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_ivtv_card*) ; 
 struct snd_ivtv_card* FUNC5 (struct snd_pcm_substream*) ; 
 struct ivtv* FUNC6 (struct v4l2_device*) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream)
{
	struct snd_ivtv_card *itvsc = FUNC5(substream);
	struct v4l2_device *v4l2_dev = itvsc->v4l2_dev;
	struct ivtv *itv = FUNC6(v4l2_dev);
	struct ivtv_stream *s;

	/* Instruct the ivtv to stop sending packets */
	FUNC3(itvsc);
	s = &itv->streams[IVTV_ENC_STREAM_TYPE_PCM];
	FUNC2(s, 0);
	FUNC0(IVTV_F_S_STREAMING, &s->s_flags);

	FUNC1(s);

	itv->pcm_announce_callback = NULL;
	FUNC4(itvsc);

	return 0;
}