#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct usbtv {struct snd_card* snd; TYPE_4__* dev; TYPE_3__* udev; int /*<<< orphan*/  snd_stream; int /*<<< orphan*/  snd_trigger; } ;
struct snd_pcm {struct usbtv* private_data; scalar_t__ info_flags; int /*<<< orphan*/  name; } ;
struct snd_card {int /*<<< orphan*/  longname; int /*<<< orphan*/  shortname; int /*<<< orphan*/  driver; } ;
struct TYPE_8__ {TYPE_1__* driver; } ;
struct TYPE_7__ {int devnum; TYPE_2__* bus; int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int busnum; } ;
struct TYPE_5__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SNDRV_DEFAULT_IDX1 ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_CONTINUOUS ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  USBTV_AUDIO_BUFFER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_card*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_card**) ; 
 int FUNC4 (struct snd_card*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_card*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct snd_card*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  snd_usbtv_pcm_ops ; 
 int /*<<< orphan*/  snd_usbtv_trigger ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC12(struct usbtv *usbtv)
{
	int rv;
	struct snd_card *card;
	struct snd_pcm *pcm;

	FUNC0(&usbtv->snd_trigger, snd_usbtv_trigger);
	FUNC1(&usbtv->snd_stream, 0);

	rv = FUNC3(&usbtv->udev->dev, SNDRV_DEFAULT_IDX1, "usbtv",
		THIS_MODULE, 0, &card);
	if (rv < 0)
		return rv;

	FUNC11(card->driver, usbtv->dev->driver->name, sizeof(card->driver));
	FUNC11(card->shortname, "usbtv", sizeof(card->shortname));
	FUNC10(card->longname, sizeof(card->longname),
		"USBTV Audio at bus %d device %d", usbtv->udev->bus->busnum,
		usbtv->udev->devnum);

	FUNC5(card, usbtv->dev);

	usbtv->snd = card;

	rv = FUNC8(card, "USBTV Audio", 0, 0, 1, &pcm);
	if (rv < 0)
		goto err;

	FUNC11(pcm->name, "USBTV Audio Input", sizeof(pcm->name));
	pcm->info_flags = 0;
	pcm->private_data = usbtv;

	FUNC9(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_usbtv_pcm_ops);
	FUNC7(pcm, SNDRV_DMA_TYPE_CONTINUOUS,
		FUNC6(GFP_KERNEL), USBTV_AUDIO_BUFFER,
		USBTV_AUDIO_BUFFER);

	rv = FUNC4(card);
	if (rv)
		goto err;

	return 0;

err:
	usbtv->snd = NULL;
	FUNC2(card);

	return rv;
}