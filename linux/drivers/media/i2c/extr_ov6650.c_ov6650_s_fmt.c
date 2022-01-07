
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int width; int height; int top; int left; } ;
struct v4l2_subdev_selection {TYPE_1__ r; int target; int which; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int width; int height; int code; int colorspace; } ;
struct TYPE_4__ {int width; int height; int top; int left; } ;
struct ov6650 {int code; int pclk_max; int half_scale; int pclk_limit; TYPE_2__ rect; int colorspace; int tpf; } ;
struct i2c_client {int dev; } ;


 int CLKRC_12MHz ;
 int COMA_BW ;
 int COMA_BYTE_SWAP ;
 int COMA_QCIF ;
 int COMA_RAW_RGB ;
 int COMA_RGB ;
 int COMA_WORD_SWAP ;
 int COML_ONE_CHANNEL ;
 int EINVAL ;
 unsigned long GET_CLKRC_DIV (int) ;






 int REG_CLKRC ;
 int REG_COMA ;
 int REG_COML ;
 int V4L2_COLORSPACE_JPEG ;
 int V4L2_COLORSPACE_SRGB ;
 int V4L2_SEL_TGT_CROP ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*,int) ;
 int is_unscaled_ok (int,int,TYPE_2__*) ;
 int ov6650_reg_rmw (struct i2c_client*,int ,int,int) ;
 int ov6650_reg_write (struct i2c_client*,int ,int) ;
 int ov6650_set_selection (struct v4l2_subdev*,int *,struct v4l2_subdev_selection*) ;
 int to_clkrc (int *,int,int) ;
 struct ov6650* to_ov6650 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ov6650_s_fmt(struct v4l2_subdev *sd, struct v4l2_mbus_framefmt *mf)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct ov6650 *priv = to_ov6650(client);
 bool half_scale = !is_unscaled_ok(mf->width, mf->height, &priv->rect);
 struct v4l2_subdev_selection sel = {
  .which = V4L2_SUBDEV_FORMAT_ACTIVE,
  .target = V4L2_SEL_TGT_CROP,
  .r.left = priv->rect.left + (priv->rect.width >> 1) -
   (mf->width >> (1 - half_scale)),
  .r.top = priv->rect.top + (priv->rect.height >> 1) -
   (mf->height >> (1 - half_scale)),
  .r.width = mf->width << half_scale,
  .r.height = mf->height << half_scale,
 };
 u32 code = mf->code;
 unsigned long mclk, pclk;
 u8 coma_set = 0, coma_mask = 0, coml_set, coml_mask, clkrc;
 int ret;


 switch (code) {
 case 130:
  dev_dbg(&client->dev, "pixel format GREY8_1X8\n");
  coma_mask |= COMA_RGB | COMA_WORD_SWAP | COMA_BYTE_SWAP;
  coma_set |= COMA_BW;
  break;
 case 129:
  dev_dbg(&client->dev, "pixel format YUYV8_2X8_LE\n");
  coma_mask |= COMA_RGB | COMA_BW | COMA_BYTE_SWAP;
  coma_set |= COMA_WORD_SWAP;
  break;
 case 128:
  dev_dbg(&client->dev, "pixel format YVYU8_2X8_LE (untested)\n");
  coma_mask |= COMA_RGB | COMA_BW | COMA_WORD_SWAP |
    COMA_BYTE_SWAP;
  break;
 case 132:
  dev_dbg(&client->dev, "pixel format YUYV8_2X8_BE\n");
  if (half_scale) {
   coma_mask |= COMA_RGB | COMA_BW | COMA_WORD_SWAP;
   coma_set |= COMA_BYTE_SWAP;
  } else {
   coma_mask |= COMA_RGB | COMA_BW;
   coma_set |= COMA_BYTE_SWAP | COMA_WORD_SWAP;
  }
  break;
 case 131:
  dev_dbg(&client->dev, "pixel format YVYU8_2X8_BE (untested)\n");
  if (half_scale) {
   coma_mask |= COMA_RGB | COMA_BW;
   coma_set |= COMA_BYTE_SWAP | COMA_WORD_SWAP;
  } else {
   coma_mask |= COMA_RGB | COMA_BW | COMA_WORD_SWAP;
   coma_set |= COMA_BYTE_SWAP;
  }
  break;
 case 133:
  dev_dbg(&client->dev, "pixel format SBGGR8_1X8 (untested)\n");
  coma_mask |= COMA_BW | COMA_BYTE_SWAP | COMA_WORD_SWAP;
  coma_set |= COMA_RAW_RGB | COMA_RGB;
  break;
 default:
  dev_err(&client->dev, "Pixel format not handled: 0x%x\n", code);
  return -EINVAL;
 }
 priv->code = code;

 if (code == 130 ||
   code == 133) {
  coml_mask = COML_ONE_CHANNEL;
  coml_set = 0;
  priv->pclk_max = 4000000;
 } else {
  coml_mask = 0;
  coml_set = COML_ONE_CHANNEL;
  priv->pclk_max = 8000000;
 }

 if (code == 133)
  priv->colorspace = V4L2_COLORSPACE_SRGB;
 else if (code != 0)
  priv->colorspace = V4L2_COLORSPACE_JPEG;

 if (half_scale) {
  dev_dbg(&client->dev, "max resolution: QCIF\n");
  coma_set |= COMA_QCIF;
  priv->pclk_max /= 2;
 } else {
  dev_dbg(&client->dev, "max resolution: CIF\n");
  coma_mask |= COMA_QCIF;
 }
 priv->half_scale = half_scale;

 clkrc = CLKRC_12MHz;
 mclk = 12000000;
 priv->pclk_limit = 1334000;
 dev_dbg(&client->dev, "using 12MHz input clock\n");

 clkrc |= to_clkrc(&priv->tpf, priv->pclk_limit, priv->pclk_max);

 pclk = priv->pclk_max / GET_CLKRC_DIV(clkrc);
 dev_dbg(&client->dev, "pixel clock divider: %ld.%ld\n",
   mclk / pclk, 10 * mclk % pclk / pclk);

 ret = ov6650_set_selection(sd, ((void*)0), &sel);
 if (!ret)
  ret = ov6650_reg_rmw(client, REG_COMA, coma_set, coma_mask);
 if (!ret)
  ret = ov6650_reg_write(client, REG_CLKRC, clkrc);
 if (!ret)
  ret = ov6650_reg_rmw(client, REG_COML, coml_set, coml_mask);

 if (!ret) {
  mf->colorspace = priv->colorspace;
  mf->width = priv->rect.width >> half_scale;
  mf->height = priv->rect.height >> half_scale;
 }
 return ret;
}
