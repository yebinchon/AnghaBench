
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct s5k6aa_ctrls {TYPE_3__* gain_blue; TYPE_2__* gain_green; TYPE_1__* gain_red; } ;
struct s5k6aa {struct s5k6aa_ctrls ctrls; int sd; } ;
struct i2c_client {int dummy; } ;
struct TYPE_6__ {int val; } ;
struct TYPE_5__ {int val; } ;
struct TYPE_4__ {int val; } ;


 int AALG_WB_EN_MASK ;
 int REG_DBG_AUTOALG_EN ;
 int REG_SF_BGAIN ;
 int REG_SF_BGAIN_CHG ;
 int REG_SF_GGAIN ;
 int REG_SF_GGAIN_CHG ;
 int REG_SF_RGAIN ;
 int REG_SF_RGAIN_CHG ;
 int s5k6aa_read (struct i2c_client*,int ,int*) ;
 int s5k6aa_write (struct i2c_client*,int ,int) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int s5k6aa_set_awb(struct s5k6aa *s5k6aa, int awb)
{
 struct i2c_client *c = v4l2_get_subdevdata(&s5k6aa->sd);
 struct s5k6aa_ctrls *ctrls = &s5k6aa->ctrls;
 u16 reg;

 int ret = s5k6aa_read(c, REG_DBG_AUTOALG_EN, &reg);

 if (!ret && !awb) {
  ret = s5k6aa_write(c, REG_SF_RGAIN, ctrls->gain_red->val);
  if (!ret)
   ret = s5k6aa_write(c, REG_SF_RGAIN_CHG, 1);
  if (ret)
   return ret;

  ret = s5k6aa_write(c, REG_SF_GGAIN, ctrls->gain_green->val);
  if (!ret)
   ret = s5k6aa_write(c, REG_SF_GGAIN_CHG, 1);
  if (ret)
   return ret;

  ret = s5k6aa_write(c, REG_SF_BGAIN, ctrls->gain_blue->val);
  if (!ret)
   ret = s5k6aa_write(c, REG_SF_BGAIN_CHG, 1);
 }
 if (!ret) {
  reg = awb ? reg | AALG_WB_EN_MASK : reg & ~AALG_WB_EN_MASK;
  ret = s5k6aa_write(c, REG_DBG_AUTOALG_EN, reg);
 }

 return ret;
}
