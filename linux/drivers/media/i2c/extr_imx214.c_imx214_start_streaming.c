
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imx214_mode {int reg_table; } ;
struct TYPE_2__ {int height; int width; } ;
struct imx214 {int mutex; int dev; int regmap; int ctrls; TYPE_1__ fmt; } ;


 int ARRAY_SIZE (int ) ;
 int __v4l2_ctrl_handler_setup (int *) ;
 int dev_err (int ,char*,...) ;
 int height ;
 int imx214_modes ;
 int imx214_write_table (struct imx214*,int ) ;
 int mode_table_common ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_write (int ,int,int) ;
 struct imx214_mode* v4l2_find_nearest_size (int ,int ,int ,int ,int ,int ) ;
 int width ;

__attribute__((used)) static int imx214_start_streaming(struct imx214 *imx214)
{
 const struct imx214_mode *mode;
 int ret;

 mutex_lock(&imx214->mutex);
 ret = imx214_write_table(imx214, mode_table_common);
 if (ret < 0) {
  dev_err(imx214->dev, "could not sent common table %d\n", ret);
  goto error;
 }

 mode = v4l2_find_nearest_size(imx214_modes,
    ARRAY_SIZE(imx214_modes), width, height,
    imx214->fmt.width, imx214->fmt.height);
 ret = imx214_write_table(imx214, mode->reg_table);
 if (ret < 0) {
  dev_err(imx214->dev, "could not sent mode table %d\n", ret);
  goto error;
 }
 ret = __v4l2_ctrl_handler_setup(&imx214->ctrls);
 if (ret < 0) {
  dev_err(imx214->dev, "could not sync v4l2 controls\n");
  goto error;
 }
 ret = regmap_write(imx214->regmap, 0x100, 1);
 if (ret < 0) {
  dev_err(imx214->dev, "could not sent start table %d\n", ret);
  goto error;
 }

 mutex_unlock(&imx214->mutex);
 return 0;

error:
 mutex_unlock(&imx214->mutex);
 return ret;
}
