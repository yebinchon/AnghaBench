
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int if_dvbc; int if_dvbt2_8; int if_dvbt2_7; int if_dvbt2_6; int if_dvbt_8; int if_dvbt_7; int if_dvbt_6; int if_atsc_qam; int if_atsc_vsb; } ;
struct tda18212_dev {int if_frequency; TYPE_3__* client; int regmap; TYPE_1__ cfg; } ;
struct TYPE_5__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dtv_frontend_properties {int delivery_system; int frequency; int bandwidth_hz; } ;
struct dvb_frontend {TYPE_2__ ops; struct dtv_frontend_properties dtv_property_cache; struct tda18212_dev* tuner_priv; } ;
typedef int buf ;
struct TYPE_6__ {int dev; } ;




 int DIV_ROUND_CLOSEST (int ,int) ;
 int EINVAL ;






 int dev_dbg (int *,char*,int,...) ;
 int regmap_bulk_write (int ,int,int*,int) ;
 int regmap_write (int ,int,int const) ;
 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*,int) ;

__attribute__((used)) static int tda18212_set_params(struct dvb_frontend *fe)
{
 struct tda18212_dev *dev = fe->tuner_priv;
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;
 int ret, i;
 u32 if_khz;
 u8 buf[9];
 static const u8 bw_params[][3] = {

  [0] = { 0xb3, 0x20, 0x03 },
  [1] = { 0xb3, 0x31, 0x01 },
  [2] = { 0xb3, 0x22, 0x01 },
  [3] = { 0xbc, 0x20, 0x03 },
  [4] = { 0xbc, 0x72, 0x03 },
  [5] = { 0xbc, 0x22, 0x01 },
  [6] = { 0x92, 0x50, 0x03 },
  [7] = { 0x92, 0x53, 0x03 },
  [8] = { 0x7d, 0x20, 0x63 },
  [9] = { 0x7d, 0x20, 0x63 },
 };

 dev_dbg(&dev->client->dev,
   "delivery_system=%d frequency=%d bandwidth_hz=%d\n",
   c->delivery_system, c->frequency,
   c->bandwidth_hz);

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);

 switch (c->delivery_system) {
 case 133:
  if_khz = dev->cfg.if_atsc_vsb;
  i = 8;
  break;
 case 131:
  if_khz = dev->cfg.if_atsc_qam;
  i = 9;
  break;
 case 129:
  switch (c->bandwidth_hz) {
  case 6000000:
   if_khz = dev->cfg.if_dvbt_6;
   i = 0;
   break;
  case 7000000:
   if_khz = dev->cfg.if_dvbt_7;
   i = 1;
   break;
  case 8000000:
   if_khz = dev->cfg.if_dvbt_8;
   i = 2;
   break;
  default:
   ret = -EINVAL;
   goto error;
  }
  break;
 case 128:
  switch (c->bandwidth_hz) {
  case 6000000:
   if_khz = dev->cfg.if_dvbt2_6;
   i = 3;
   break;
  case 7000000:
   if_khz = dev->cfg.if_dvbt2_7;
   i = 4;
   break;
  case 8000000:
   if_khz = dev->cfg.if_dvbt2_8;
   i = 5;
   break;
  default:
   ret = -EINVAL;
   goto error;
  }
  break;
 case 132:
 case 130:
  if_khz = dev->cfg.if_dvbc;
  i = 7;
  break;
 default:
  ret = -EINVAL;
  goto error;
 }

 ret = regmap_write(dev->regmap, 0x23, bw_params[i][2]);
 if (ret)
  goto error;

 ret = regmap_write(dev->regmap, 0x06, 0x00);
 if (ret)
  goto error;

 ret = regmap_write(dev->regmap, 0x0f, bw_params[i][0]);
 if (ret)
  goto error;

 buf[0] = 0x02;
 buf[1] = bw_params[i][1];
 buf[2] = 0x03;
 buf[3] = DIV_ROUND_CLOSEST(if_khz, 50);
 buf[4] = ((c->frequency / 1000) >> 16) & 0xff;
 buf[5] = ((c->frequency / 1000) >> 8) & 0xff;
 buf[6] = ((c->frequency / 1000) >> 0) & 0xff;
 buf[7] = 0xc1;
 buf[8] = 0x01;
 ret = regmap_bulk_write(dev->regmap, 0x12, buf, sizeof(buf));
 if (ret)
  goto error;


 dev->if_frequency = buf[3] * 50 * 1000;

exit:
 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 0);

 return ret;

error:
 dev_dbg(&dev->client->dev, "failed=%d\n", ret);
 goto exit;
}
