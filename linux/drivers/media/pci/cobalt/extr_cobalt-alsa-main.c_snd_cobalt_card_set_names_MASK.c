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
struct snd_cobalt_card {struct snd_card* sc; struct cobalt_stream* s; } ;
struct snd_card {int /*<<< orphan*/  longname; int /*<<< orphan*/  shortname; int /*<<< orphan*/  driver; } ;
struct cobalt_stream {int video_channel; struct cobalt* cobalt; } ;
struct cobalt {int instance; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC2(struct snd_cobalt_card *cobsc)
{
	struct cobalt_stream *s = cobsc->s;
	struct cobalt *cobalt = s->cobalt;
	struct snd_card *sc = cobsc->sc;

	/* sc->driver is used by alsa-lib's configurator: simple, unique */
	FUNC1(sc->driver, "cobalt", sizeof(sc->driver));

	/* sc->shortname is a symlink in /proc/asound: COBALT-M -> cardN */
	FUNC0(sc->shortname,  sizeof(sc->shortname), "cobalt-%d-%d",
		 cobalt->instance, s->video_channel);

	/* sc->longname is read from /proc/asound/cards */
	FUNC0(sc->longname, sizeof(sc->longname),
		 "Cobalt %d HDMI %d",
		 cobalt->instance, s->video_channel);

	return 0;
}