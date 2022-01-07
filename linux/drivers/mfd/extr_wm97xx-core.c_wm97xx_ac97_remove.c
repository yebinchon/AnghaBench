
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm97xx_priv {int ac97; } ;
struct ac97_codec_device {int dummy; } ;


 struct wm97xx_priv* ac97_get_drvdata (struct ac97_codec_device*) ;
 int snd_ac97_compat_release (int ) ;

__attribute__((used)) static int wm97xx_ac97_remove(struct ac97_codec_device *adev)
{
 struct wm97xx_priv *wm97xx = ac97_get_drvdata(adev);

 snd_ac97_compat_release(wm97xx->ac97);

 return 0;
}
