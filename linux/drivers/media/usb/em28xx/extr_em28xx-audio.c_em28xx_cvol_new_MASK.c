#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_2__ {int /*<<< orphan*/  p; } ;
struct snd_kcontrol_new {int private_value; char* name; TYPE_1__ tlv; int /*<<< orphan*/  info; int /*<<< orphan*/  put; int /*<<< orphan*/  get; void* iface; } ;
struct snd_kcontrol {int dummy; } ;
struct snd_card {int dummy; } ;
struct em28xx {int dummy; } ;

/* Variables and functions */
 void* SNDRV_CTL_ELEM_IFACE_MIXER ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  em28xx_db_scale ; 
 int /*<<< orphan*/  em28xx_vol_get ; 
 int /*<<< orphan*/  em28xx_vol_get_mute ; 
 int /*<<< orphan*/  em28xx_vol_info ; 
 int /*<<< orphan*/  em28xx_vol_put ; 
 int /*<<< orphan*/  em28xx_vol_put_mute ; 
 int /*<<< orphan*/  FUNC1 (struct snd_kcontrol_new*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct snd_card*,struct snd_kcontrol*) ; 
 int /*<<< orphan*/  snd_ctl_boolean_mono_info ; 
 struct snd_kcontrol* FUNC3 (struct snd_kcontrol_new*,struct em28xx*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 

__attribute__((used)) static int FUNC5(struct snd_card *card, struct em28xx *dev,
			   char *name, int id)
{
	int err;
	char ctl_name[44];
	struct snd_kcontrol *kctl;
	struct snd_kcontrol_new tmp;

	FUNC1(&tmp, 0, sizeof(tmp));
	tmp.iface = SNDRV_CTL_ELEM_IFACE_MIXER,
	tmp.private_value = id,
	tmp.name  = ctl_name,

	/* Add Mute Control */
	FUNC4(ctl_name, "%s Switch", name);
	tmp.get  = em28xx_vol_get_mute;
	tmp.put  = em28xx_vol_put_mute;
	tmp.info = snd_ctl_boolean_mono_info;
	kctl = FUNC3(&tmp, dev);
	err = FUNC2(card, kctl);
	if (err < 0)
		return err;
	FUNC0("Added control %s for ac97 volume control 0x%04x\n",
		ctl_name, id);

	FUNC1(&tmp, 0, sizeof(tmp));
	tmp.iface = SNDRV_CTL_ELEM_IFACE_MIXER,
	tmp.private_value = id,
	tmp.name  = ctl_name,

	/* Add Volume Control */
	FUNC4(ctl_name, "%s Volume", name);
	tmp.get   = em28xx_vol_get;
	tmp.put   = em28xx_vol_put;
	tmp.info  = em28xx_vol_info;
	tmp.tlv.p = em28xx_db_scale,
	kctl = FUNC3(&tmp, dev);
	err = FUNC2(card, kctl);
	if (err < 0)
		return err;
	FUNC0("Added control %s for ac97 volume control 0x%04x\n",
		ctl_name, id);

	return 0;
}