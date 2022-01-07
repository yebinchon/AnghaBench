
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_2__ {int p; } ;
struct snd_kcontrol_new {int private_value; char* name; TYPE_1__ tlv; int info; int put; int get; void* iface; } ;
struct snd_kcontrol {int dummy; } ;
struct snd_card {int dummy; } ;
struct em28xx {int dummy; } ;


 void* SNDRV_CTL_ELEM_IFACE_MIXER ;
 int dprintk (char*,char*,int) ;
 int em28xx_db_scale ;
 int em28xx_vol_get ;
 int em28xx_vol_get_mute ;
 int em28xx_vol_info ;
 int em28xx_vol_put ;
 int em28xx_vol_put_mute ;
 int memset (struct snd_kcontrol_new*,int ,int) ;
 int snd_ctl_add (struct snd_card*,struct snd_kcontrol*) ;
 int snd_ctl_boolean_mono_info ;
 struct snd_kcontrol* snd_ctl_new1 (struct snd_kcontrol_new*,struct em28xx*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static int em28xx_cvol_new(struct snd_card *card, struct em28xx *dev,
      char *name, int id)
{
 int err;
 char ctl_name[44];
 struct snd_kcontrol *kctl;
 struct snd_kcontrol_new tmp;

 memset(&tmp, 0, sizeof(tmp));
 tmp.iface = SNDRV_CTL_ELEM_IFACE_MIXER,
 tmp.private_value = id,
 tmp.name = ctl_name,


 sprintf(ctl_name, "%s Switch", name);
 tmp.get = em28xx_vol_get_mute;
 tmp.put = em28xx_vol_put_mute;
 tmp.info = snd_ctl_boolean_mono_info;
 kctl = snd_ctl_new1(&tmp, dev);
 err = snd_ctl_add(card, kctl);
 if (err < 0)
  return err;
 dprintk("Added control %s for ac97 volume control 0x%04x\n",
  ctl_name, id);

 memset(&tmp, 0, sizeof(tmp));
 tmp.iface = SNDRV_CTL_ELEM_IFACE_MIXER,
 tmp.private_value = id,
 tmp.name = ctl_name,


 sprintf(ctl_name, "%s Volume", name);
 tmp.get = em28xx_vol_get;
 tmp.put = em28xx_vol_put;
 tmp.info = em28xx_vol_info;
 tmp.tlv.p = em28xx_db_scale,
 kctl = snd_ctl_new1(&tmp, dev);
 err = snd_ctl_add(card, kctl);
 if (err < 0)
  return err;
 dprintk("Added control %s for ac97 volume control 0x%04x\n",
  ctl_name, id);

 return 0;
}
