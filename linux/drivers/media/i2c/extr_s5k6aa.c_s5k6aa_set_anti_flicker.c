
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct s5k6aa {int sd; } ;
struct i2c_client {int dummy; } ;


 int AALG_FLICKER_EN_MASK ;
 int REG_DBG_AUTOALG_EN ;
 int REG_SF_FLICKER_QUANT ;
 int REG_SF_FLICKER_QUANT_CHG ;
 int V4L2_CID_POWER_LINE_FREQUENCY_AUTO ;
 int s5k6aa_read (struct i2c_client*,int ,int*) ;
 int s5k6aa_write (struct i2c_client*,int ,int) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int s5k6aa_set_anti_flicker(struct s5k6aa *s5k6aa, int value)
{
 struct i2c_client *client = v4l2_get_subdevdata(&s5k6aa->sd);
 u16 auto_alg;
 int ret;

 ret = s5k6aa_read(client, REG_DBG_AUTOALG_EN, &auto_alg);
 if (ret)
  return ret;

 if (value == V4L2_CID_POWER_LINE_FREQUENCY_AUTO) {
  auto_alg |= AALG_FLICKER_EN_MASK;
 } else {
  auto_alg &= ~AALG_FLICKER_EN_MASK;


  ret = s5k6aa_write(client, REG_SF_FLICKER_QUANT, value);
  if (ret)
   return ret;
  ret = s5k6aa_write(client, REG_SF_FLICKER_QUANT_CHG, 1);
  if (ret)
   return ret;
 }

 return s5k6aa_write(client, REG_DBG_AUTOALG_EN, auto_alg);
}
