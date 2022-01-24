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
struct snd_ivtv_card {struct snd_card* sc; int /*<<< orphan*/  v4l2_dev; } ;
struct snd_card {int /*<<< orphan*/  longname; int /*<<< orphan*/  shortname; int /*<<< orphan*/  driver; } ;
struct ivtv {int instance; char* card_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct ivtv* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_ivtv_card *itvsc)
{
	struct ivtv *itv = FUNC2(itvsc->v4l2_dev);
	struct snd_card *sc = itvsc->sc;

	/* sc->driver is used by alsa-lib's configurator: simple, unique */
	FUNC1(sc->driver, "CX2341[56]", sizeof(sc->driver));

	/* sc->shortname is a symlink in /proc/asound: IVTV-M -> cardN */
	FUNC0(sc->shortname,  sizeof(sc->shortname), "IVTV-%d",
		 itv->instance);

	/* sc->longname is read from /proc/asound/cards */
	FUNC0(sc->longname, sizeof(sc->longname),
		 "CX2341[56] #%d %s TV/FM Radio/Line-In Capture",
		 itv->instance, itv->card_name);

	return 0;
}