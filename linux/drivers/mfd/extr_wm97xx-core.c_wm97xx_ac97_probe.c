
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm97xx_platform_data {int regmap; int * batt_pdata; int ac97; } ;
struct wm97xx_priv {int ac97; int dev; struct wm97xx_platform_data codec_pdata; } ;
struct wm97xx_pdata {int * batt_pdata; } ;
struct regmap_config {int dummy; } ;
struct mfd_cell {int pdata_size; struct wm97xx_platform_data* platform_data; } ;
struct ac97_codec_device {int vendor_id; } ;


 int ARRAY_SIZE (struct mfd_cell*) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PLATFORM_DEVID_NONE ;
 int PTR_ERR (int ) ;



 int ac97_codec_dev2dev (struct ac97_codec_device*) ;
 int ac97_set_drvdata (struct ac97_codec_device*,struct wm97xx_priv*) ;
 int dev_info (int ,char*,int ) ;
 struct wm97xx_priv* devm_kzalloc (int ,int,int ) ;
 int devm_mfd_add_devices (int ,int ,struct mfd_cell*,int,int *,int ,int *) ;
 int devm_regmap_init_ac97 (int ,struct regmap_config const*) ;
 struct wm97xx_pdata* snd_ac97_codec_get_platdata (struct ac97_codec_device*) ;
 int snd_ac97_compat_alloc (struct ac97_codec_device*) ;
 int snd_ac97_compat_release (int ) ;
 struct mfd_cell* wm9705_cells ;
 struct regmap_config wm9705_regmap_config ;
 struct mfd_cell* wm9712_cells ;
 struct regmap_config wm9712_regmap_config ;
 struct mfd_cell* wm9713_cells ;
 struct regmap_config wm9713_regmap_config ;

__attribute__((used)) static int wm97xx_ac97_probe(struct ac97_codec_device *adev)
{
 struct wm97xx_priv *wm97xx;
 const struct regmap_config *config;
 struct wm97xx_platform_data *codec_pdata;
 struct mfd_cell *cells;
 int ret = -ENODEV, nb_cells, i;
 struct wm97xx_pdata *pdata = snd_ac97_codec_get_platdata(adev);

 wm97xx = devm_kzalloc(ac97_codec_dev2dev(adev),
         sizeof(*wm97xx), GFP_KERNEL);
 if (!wm97xx)
  return -ENOMEM;

 wm97xx->dev = ac97_codec_dev2dev(adev);
 wm97xx->ac97 = snd_ac97_compat_alloc(adev);
 if (IS_ERR(wm97xx->ac97))
  return PTR_ERR(wm97xx->ac97);


 ac97_set_drvdata(adev, wm97xx);
 dev_info(wm97xx->dev, "wm97xx core found, id=0x%x\n",
   adev->vendor_id);

 codec_pdata = &wm97xx->codec_pdata;
 codec_pdata->ac97 = wm97xx->ac97;
 codec_pdata->batt_pdata = pdata ? pdata->batt_pdata : ((void*)0);

 switch (adev->vendor_id) {
 case 130:
  config = &wm9705_regmap_config;
  cells = wm9705_cells;
  nb_cells = ARRAY_SIZE(wm9705_cells);
  break;
 case 129:
  config = &wm9712_regmap_config;
  cells = wm9712_cells;
  nb_cells = ARRAY_SIZE(wm9712_cells);
  break;
 case 128:
  config = &wm9713_regmap_config;
  cells = wm9713_cells;
  nb_cells = ARRAY_SIZE(wm9713_cells);
  break;
 default:
  goto err_free_compat;
 }

 for (i = 0; i < nb_cells; i++) {
  cells[i].platform_data = codec_pdata;
  cells[i].pdata_size = sizeof(*codec_pdata);
 }

 codec_pdata->regmap = devm_regmap_init_ac97(wm97xx->ac97, config);
 if (IS_ERR(codec_pdata->regmap)) {
  ret = PTR_ERR(codec_pdata->regmap);
  goto err_free_compat;
 }

 ret = devm_mfd_add_devices(wm97xx->dev, PLATFORM_DEVID_NONE,
       cells, nb_cells, ((void*)0), 0, ((void*)0));
 if (ret)
  goto err_free_compat;

 return ret;

err_free_compat:
 snd_ac97_compat_release(wm97xx->ac97);
 return ret;
}
