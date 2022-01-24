#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct TYPE_4__ {scalar_t__ users; int shutdown; } ;
struct cx231xx {int /*<<< orphan*/  wq_trigger; int /*<<< orphan*/  stream_started; int /*<<< orphan*/  dev; TYPE_2__ adev; int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int /*<<< orphan*/ * dma_area; } ;

/* Variables and functions */
 int /*<<< orphan*/  Audio ; 
 int /*<<< orphan*/  INDEX_AUDIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cx231xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct cx231xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct cx231xx* FUNC9 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct snd_pcm_substream *substream)
{
	int ret;
	struct cx231xx *dev = FUNC9(substream);

	FUNC4(dev->dev, "closing device\n");

	/* inform hardware to stop streaming */
	FUNC6(&dev->lock);
	ret = FUNC2(dev, 0, Audio);

	/* set alternate setting for audio interface */
	/* 1 - 48000 samples per sec */
	ret = FUNC3(dev, INDEX_AUDIO, 0);
	if (ret < 0) {
		FUNC5(dev->dev,
			"failed to set alternate setting !\n");

		FUNC7(&dev->lock);
		return ret;
	}

	dev->adev.users--;
	if (substream->runtime->dma_area) {
		FUNC4(dev->dev, "freeing\n");
		FUNC10(substream->runtime->dma_area);
		substream->runtime->dma_area = NULL;
	}
	FUNC7(&dev->lock);

	if (dev->adev.users == 0 && dev->adev.shutdown == 1) {
		FUNC4(dev->dev, "audio users: %d\n", dev->adev.users);
		FUNC4(dev->dev, "disabling audio stream!\n");
		dev->adev.shutdown = 0;
		FUNC4(dev->dev, "released lock\n");
		if (FUNC0(&dev->stream_started) > 0) {
			FUNC1(&dev->stream_started, 0);
			FUNC8(&dev->wq_trigger);
		}
	}
	return 0;
}