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
struct tw686x_dev {struct snd_card* snd_card; struct tw686x_audio_channel* audio_channels; struct pci_dev* pci_dev; } ;
struct tw686x_audio_channel {int ch; struct tw686x_dev* dev; int /*<<< orphan*/  lock; } ;
struct snd_card {int /*<<< orphan*/  longname; int /*<<< orphan*/  shortname; int /*<<< orphan*/  driver; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_CONTROL1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SNDRV_DEFAULT_IDX1 ; 
 int /*<<< orphan*/  SNDRV_DEFAULT_STR1 ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC1 (struct tw686x_dev*) ; 
 char* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct tw686x_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_card*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_card**) ; 
 int FUNC6 (struct snd_card*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_card*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC10 (struct tw686x_dev*,struct tw686x_audio_channel*) ; 
 int /*<<< orphan*/  FUNC11 (struct tw686x_dev*,struct tw686x_audio_channel*) ; 
 int FUNC12 (struct tw686x_dev*) ; 

int FUNC13(struct tw686x_dev *dev)
{
	struct pci_dev *pci_dev = dev->pci_dev;
	struct snd_card *card;
	int err, ch;

	/* Enable external audio */
	FUNC3(dev, AUDIO_CONTROL1, FUNC0(0));

	err = FUNC5(&pci_dev->dev, SNDRV_DEFAULT_IDX1,
			   SNDRV_DEFAULT_STR1,
			   THIS_MODULE, 0, &card);
	if (err < 0)
		return err;

	dev->snd_card = card;
	FUNC9(card->driver, "tw686x", sizeof(card->driver));
	FUNC9(card->shortname, "tw686x", sizeof(card->shortname));
	FUNC9(card->longname, FUNC2(pci_dev), sizeof(card->longname));
	FUNC7(card, &pci_dev->dev);

	for (ch = 0; ch < FUNC1(dev); ch++) {
		struct tw686x_audio_channel *ac;

		ac = &dev->audio_channels[ch];
		FUNC8(&ac->lock);
		ac->dev = dev;
		ac->ch = ch;

		err = FUNC10(dev, ac);
		if (err < 0)
			goto err_cleanup;
	}

	err = FUNC12(dev);
	if (err < 0)
		goto err_cleanup;

	err = FUNC6(card);
	if (!err)
		return 0;

err_cleanup:
	for (ch = 0; ch < FUNC1(dev); ch++) {
		if (!dev->audio_channels[ch].dev)
			continue;
		FUNC11(dev, &dev->audio_channels[ch]);
	}
	FUNC4(card);
	dev->snd_card = NULL;
	return err;
}