
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_subdev {struct v4l2_ctrl_handler* ctrl_handler; int flags; } ;
struct v4l2_ctrl_handler {int dummy; } ;
struct regmap {int dummy; } ;
struct max2175 {int master; int am_hiz; int mode_resolved; scalar_t__ xtal_freq; struct v4l2_ctrl_handler ctrl_hdl; TYPE_4__* bands_rf; int freq; struct v4l2_subdev sd; int rx_modes; void* rx_mode; void* hsls; void* i2s_en; TYPE_3__* pll_lock; TYPE_2__* if_gain; TYPE_1__* lna_gain; struct i2c_client* client; struct regmap* regmap; } ;
struct TYPE_14__ {int of_node; } ;
struct i2c_client {TYPE_6__ dev; } ;
struct fwnode_handle {int dummy; } ;
struct device_node {int dummy; } ;
typedef struct regmap clk ;
struct TYPE_13__ {int rangelow; } ;
struct TYPE_12__ {int flags; } ;
struct TYPE_11__ {int flags; } ;
struct TYPE_10__ {int flags; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regmap*) ;
 scalar_t__ MAX2175_EU_XTAL_FREQ ;
 int PTR_ERR (struct regmap*) ;
 int V4L2_CID_RF_TUNER_IF_GAIN ;
 int V4L2_CID_RF_TUNER_LNA_GAIN ;
 int V4L2_CID_RF_TUNER_PLL_LOCK ;
 int V4L2_CTRL_FLAG_READ_ONLY ;
 int V4L2_CTRL_FLAG_VOLATILE ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 scalar_t__ clk_get_rate (struct regmap*) ;
 int dev_err (TYPE_6__*,char*,...) ;
 int dev_info (TYPE_6__*,char*,scalar_t__) ;
 struct regmap* devm_clk_get (TYPE_6__*,int *) ;
 struct max2175* devm_kzalloc (TYPE_6__*,int,int ) ;
 struct regmap* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 TYPE_4__ eu_bands_rf ;
 int eu_rx_modes ;
 scalar_t__ fwnode_property_present (struct fwnode_handle*,char*) ;
 int fwnode_property_read_u32 (struct fwnode_handle*,char*,int *) ;
 int max2175_core_init (struct max2175*,int ) ;
 int max2175_ctrl_ops ;
 int max2175_eu_rx_mode ;
 int max2175_hsls ;
 int max2175_i2s_en ;
 int max2175_na_rx_mode ;
 int max2175_ops ;
 int max2175_refout_load_to_bits (struct i2c_client*,int ,int *) ;
 int max2175_regmap_config ;
 TYPE_4__ na_bands_rf ;
 int na_rx_modes ;
 struct fwnode_handle* of_fwnode_handle (int ) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (int ,char*,int ) ;
 int v4l2_async_register_subdev (struct v4l2_subdev*) ;
 int v4l2_async_unregister_subdev (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_free (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 int v4l2_ctrl_handler_setup (struct v4l2_ctrl_handler*) ;
 void* v4l2_ctrl_new_custom (struct v4l2_ctrl_handler*,int *,int *) ;
 void* v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int ,int,int,int ) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;

__attribute__((used)) static int max2175_probe(struct i2c_client *client)
{
 bool master = 1, am_hiz = 0;
 u32 refout_load, refout_bits = 0;
 struct v4l2_ctrl_handler *hdl;
 struct fwnode_handle *fwnode;
 struct device_node *np;
 struct v4l2_subdev *sd;
 struct regmap *regmap;
 struct max2175 *ctx;
 struct clk *clk;
 int ret;


 np = of_parse_phandle(client->dev.of_node, "maxim,master", 0);
 if (np) {
  master = 0;
  of_node_put(np);
 }

 fwnode = of_fwnode_handle(client->dev.of_node);
 if (fwnode_property_present(fwnode, "maxim,am-hiz-filter"))
  am_hiz = 1;

 if (!fwnode_property_read_u32(fwnode, "maxim,refout-load",
          &refout_load)) {
  ret = max2175_refout_load_to_bits(client, refout_load,
        &refout_bits);
  if (ret) {
   dev_err(&client->dev, "invalid refout_load %u\n",
    refout_load);
   return -EINVAL;
  }
 }

 clk = devm_clk_get(&client->dev, ((void*)0));
 if (IS_ERR(clk)) {
  ret = PTR_ERR(clk);
  dev_err(&client->dev, "cannot get clock %d\n", ret);
  return ret;
 }

 regmap = devm_regmap_init_i2c(client, &max2175_regmap_config);
 if (IS_ERR(regmap)) {
  ret = PTR_ERR(regmap);
  dev_err(&client->dev, "regmap init failed %d\n", ret);
  return -ENODEV;
 }


 ctx = devm_kzalloc(&client->dev, sizeof(*ctx), GFP_KERNEL);
 if (ctx == ((void*)0))
  return -ENOMEM;

 sd = &ctx->sd;
 ctx->master = master;
 ctx->am_hiz = am_hiz;
 ctx->mode_resolved = 0;
 ctx->regmap = regmap;
 ctx->xtal_freq = clk_get_rate(clk);
 dev_info(&client->dev, "xtal freq %luHz\n", ctx->xtal_freq);

 v4l2_i2c_subdev_init(sd, client, &max2175_ops);
 ctx->client = client;

 sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;


 hdl = &ctx->ctrl_hdl;
 ret = v4l2_ctrl_handler_init(hdl, 7);
 if (ret)
  return ret;

 ctx->lna_gain = v4l2_ctrl_new_std(hdl, &max2175_ctrl_ops,
       V4L2_CID_RF_TUNER_LNA_GAIN,
       0, 63, 1, 0);
 ctx->lna_gain->flags |= (V4L2_CTRL_FLAG_VOLATILE |
     V4L2_CTRL_FLAG_READ_ONLY);
 ctx->if_gain = v4l2_ctrl_new_std(hdl, &max2175_ctrl_ops,
      V4L2_CID_RF_TUNER_IF_GAIN,
      0, 31, 1, 0);
 ctx->if_gain->flags |= (V4L2_CTRL_FLAG_VOLATILE |
    V4L2_CTRL_FLAG_READ_ONLY);
 ctx->pll_lock = v4l2_ctrl_new_std(hdl, &max2175_ctrl_ops,
       V4L2_CID_RF_TUNER_PLL_LOCK,
       0, 1, 1, 0);
 ctx->pll_lock->flags |= (V4L2_CTRL_FLAG_VOLATILE |
     V4L2_CTRL_FLAG_READ_ONLY);
 ctx->i2s_en = v4l2_ctrl_new_custom(hdl, &max2175_i2s_en, ((void*)0));
 ctx->hsls = v4l2_ctrl_new_custom(hdl, &max2175_hsls, ((void*)0));

 if (ctx->xtal_freq == MAX2175_EU_XTAL_FREQ) {
  ctx->rx_mode = v4l2_ctrl_new_custom(hdl,
          &max2175_eu_rx_mode, ((void*)0));
  ctx->rx_modes = eu_rx_modes;
  ctx->bands_rf = &eu_bands_rf;
 } else {
  ctx->rx_mode = v4l2_ctrl_new_custom(hdl,
          &max2175_na_rx_mode, ((void*)0));
  ctx->rx_modes = na_rx_modes;
  ctx->bands_rf = &na_bands_rf;
 }
 ctx->sd.ctrl_handler = &ctx->ctrl_hdl;


 ctx->freq = ctx->bands_rf->rangelow;


 ret = v4l2_async_register_subdev(sd);
 if (ret) {
  dev_err(&client->dev, "register subdev failed\n");
  goto err_reg;
 }


 ret = max2175_core_init(ctx, refout_bits);
 if (ret)
  goto err_init;

 ret = v4l2_ctrl_handler_setup(hdl);
 if (ret)
  goto err_init;

 return 0;

err_init:
 v4l2_async_unregister_subdev(sd);
err_reg:
 v4l2_ctrl_handler_free(&ctx->ctrl_hdl);

 return ret;
}
