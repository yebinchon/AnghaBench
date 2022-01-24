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
struct solo_dev {TYPE_2__* pdev; int /*<<< orphan*/  nr_chans; struct snd_card* snd_card; TYPE_1__* vfd; int /*<<< orphan*/  snd_users; } ;
struct snd_kcontrol_new {int /*<<< orphan*/  count; } ;
struct snd_device_ops {int dummy; } ;
struct snd_card {char* driver; char* shortname; char* mixername; int /*<<< orphan*/  longname; } ;
struct TYPE_4__ {int irq; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int num; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_DEFAULT_IDX1 ; 
 int /*<<< orphan*/  SNDRV_DEV_LOWLEVEL ; 
 char* SOLO6X10_NAME ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 char* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_card*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_card**) ; 
 int FUNC5 (struct snd_card*) ; 
 int FUNC6 (struct snd_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_kcontrol_new*,struct solo_dev*) ; 
 int FUNC8 (struct snd_card*,int /*<<< orphan*/ ,struct solo_dev*,struct snd_device_ops*) ; 
 struct snd_kcontrol_new snd_solo_capture_volume ; 
 int /*<<< orphan*/  FUNC9 (struct solo_dev*) ; 
 int FUNC10 (struct solo_dev*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 

int FUNC13(struct solo_dev *solo_dev)
{
	static struct snd_device_ops ops = { };
	struct snd_card *card;
	struct snd_kcontrol_new kctl;
	char name[32];
	int ret;

	FUNC0(&solo_dev->snd_users, 0);

	/* Allows for easier mapping between video and audio */
	FUNC11(name, "Softlogic%d", solo_dev->vfd->num);

	ret = FUNC4(&solo_dev->pdev->dev,
			   SNDRV_DEFAULT_IDX1, name, THIS_MODULE, 0,
			   &solo_dev->snd_card);
	if (ret < 0)
		return ret;

	card = solo_dev->snd_card;

	FUNC12(card->driver, SOLO6X10_NAME, sizeof(card->driver));
	FUNC12(card->shortname, "SOLO-6x10 Audio", sizeof(card->shortname));
	FUNC11(card->longname, "%s on %s IRQ %d", card->shortname,
		FUNC2(solo_dev->pdev), solo_dev->pdev->irq);

	ret = FUNC8(card, SNDRV_DEV_LOWLEVEL, solo_dev, &ops);
	if (ret < 0)
		goto snd_error;

	/* Mixer controls */
	FUNC12(card->mixername, "SOLO-6x10", sizeof(card->mixername));
	kctl = snd_solo_capture_volume;
	kctl.count = solo_dev->nr_chans;

	ret = FUNC6(card, FUNC7(&kctl, solo_dev));
	if (ret < 0)
		return ret;

	ret = FUNC10(solo_dev);
	if (ret < 0)
		goto snd_error;

	ret = FUNC5(card);
	if (ret < 0)
		goto snd_error;

	FUNC9(solo_dev);

	FUNC1(&solo_dev->pdev->dev, "Alsa sound card as %s\n", name);

	return 0;

snd_error:
	FUNC3(card);
	return ret;
}