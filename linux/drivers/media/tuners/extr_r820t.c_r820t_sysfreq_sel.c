
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int v4l2_std_id ;
typedef int u8 ;
typedef int u32 ;
struct r820t_priv {TYPE_1__* cfg; } ;
typedef enum v4l2_tuner_type { ____Placeholder_v4l2_tuner_type } v4l2_tuner_type ;
struct TYPE_2__ {scalar_t__ rafael_chip; scalar_t__ use_predetect; scalar_t__ use_diplexer; } ;


 scalar_t__ CHIP_R820C ;
 scalar_t__ CHIP_R820T ;
 scalar_t__ CHIP_R828S ;
 int DIP_FREQ ;




 int V4L2_TUNER_ANALOG_TV ;
 int msleep (int) ;
 int r820t_write_reg (struct r820t_priv*,int,int) ;
 int r820t_write_reg_mask (struct r820t_priv*,int,int,int) ;
 int tuner_dbg (char*) ;

__attribute__((used)) static int r820t_sysfreq_sel(struct r820t_priv *priv, u32 freq,
        enum v4l2_tuner_type type,
        v4l2_std_id std,
        u32 delsys)
{
 int rc;
 u8 mixer_top, lna_top, cp_cur, div_buf_cur, lna_vth_l, mixer_vth_l;
 u8 air_cable1_in, cable2_in, pre_dect, lna_discharge, filter_cur;

 tuner_dbg("adjusting tuner parameters for the standard\n");

 switch (delsys) {
 case 130:
  if ((freq == 506000000) || (freq == 666000000) ||
     (freq == 818000000)) {
   mixer_top = 0x14;
   lna_top = 0xe5;
   cp_cur = 0x28;
   div_buf_cur = 0x20;
  } else {
   mixer_top = 0x24;
   lna_top = 0xe5;
   cp_cur = 0x38;
   div_buf_cur = 0x30;
  }
  lna_vth_l = 0x53;
  mixer_vth_l = 0x75;
  air_cable1_in = 0x00;
  cable2_in = 0x00;
  pre_dect = 0x40;
  lna_discharge = 14;
  filter_cur = 0x40;
  break;
 case 129:
  mixer_top = 0x24;
  lna_top = 0xe5;
  lna_vth_l = 0x53;
  mixer_vth_l = 0x75;
  air_cable1_in = 0x00;
  cable2_in = 0x00;
  pre_dect = 0x40;
  lna_discharge = 14;
  cp_cur = 0x38;
  div_buf_cur = 0x30;
  filter_cur = 0x40;
  break;
 case 128:
  mixer_top = 0x24;
  lna_top = 0xe5;
  lna_vth_l = 0x75;
  mixer_vth_l = 0x75;
  air_cable1_in = 0x00;
  cable2_in = 0x00;
  pre_dect = 0x40;
  lna_discharge = 14;
  cp_cur = 0x38;
  div_buf_cur = 0x30;
  filter_cur = 0x40;
  break;
 case 131:
  mixer_top = 0x24;
  lna_top = 0xe5;
  lna_vth_l = 0x62;
  mixer_vth_l = 0x75;
  air_cable1_in = 0x60;
  cable2_in = 0x00;
  pre_dect = 0x40;
  lna_discharge = 14;
  cp_cur = 0x38;
  div_buf_cur = 0x30;
  filter_cur = 0x40;
  break;
 default:
  mixer_top = 0x24;
  lna_top = 0xe5;
  lna_vth_l = 0x53;
  mixer_vth_l = 0x75;
  air_cable1_in = 0x00;
  cable2_in = 0x00;
  pre_dect = 0x40;
  lna_discharge = 14;
  cp_cur = 0x38;
  div_buf_cur = 0x30;
  filter_cur = 0x40;
  break;
 }

 if (priv->cfg->use_diplexer &&
    ((priv->cfg->rafael_chip == CHIP_R820T) ||
    (priv->cfg->rafael_chip == CHIP_R828S) ||
    (priv->cfg->rafael_chip == CHIP_R820C))) {
  if (freq > DIP_FREQ)
   air_cable1_in = 0x00;
  else
   air_cable1_in = 0x60;
  cable2_in = 0x00;
 }


 if (priv->cfg->use_predetect) {
  rc = r820t_write_reg_mask(priv, 0x06, pre_dect, 0x40);
  if (rc < 0)
   return rc;
 }

 rc = r820t_write_reg_mask(priv, 0x1d, lna_top, 0xc7);
 if (rc < 0)
  return rc;
 rc = r820t_write_reg_mask(priv, 0x1c, mixer_top, 0xf8);
 if (rc < 0)
  return rc;
 rc = r820t_write_reg(priv, 0x0d, lna_vth_l);
 if (rc < 0)
  return rc;
 rc = r820t_write_reg(priv, 0x0e, mixer_vth_l);
 if (rc < 0)
  return rc;


 rc = r820t_write_reg_mask(priv, 0x05, air_cable1_in, 0x60);
 if (rc < 0)
  return rc;
 rc = r820t_write_reg_mask(priv, 0x06, cable2_in, 0x08);
 if (rc < 0)
  return rc;

 rc = r820t_write_reg_mask(priv, 0x11, cp_cur, 0x38);
 if (rc < 0)
  return rc;
 rc = r820t_write_reg_mask(priv, 0x17, div_buf_cur, 0x30);
 if (rc < 0)
  return rc;
 rc = r820t_write_reg_mask(priv, 0x0a, filter_cur, 0x60);
 if (rc < 0)
  return rc;
 tuner_dbg("adjusting LNA parameters\n");
 if (type != V4L2_TUNER_ANALOG_TV) {

  rc = r820t_write_reg_mask(priv, 0x1d, 0, 0x38);
  if (rc < 0)
   return rc;


  rc = r820t_write_reg_mask(priv, 0x1c, 0, 0x04);
  if (rc < 0)
   return rc;


  rc = r820t_write_reg_mask(priv, 0x06, 0, 0x40);
  if (rc < 0)
   return rc;


  rc = r820t_write_reg_mask(priv, 0x1a, 0x30, 0x30);
  if (rc < 0)
   return rc;

  msleep(250);


  rc = r820t_write_reg_mask(priv, 0x1d, 0x18, 0x38);
  if (rc < 0)
   return rc;






  rc = r820t_write_reg_mask(priv, 0x1c, mixer_top, 0x04);
  if (rc < 0)
   return rc;


  rc = r820t_write_reg_mask(priv, 0x1e, lna_discharge, 0x1f);
  if (rc < 0)
   return rc;


  rc = r820t_write_reg_mask(priv, 0x1a, 0x20, 0x30);
  if (rc < 0)
   return rc;
 } else {

  rc = r820t_write_reg_mask(priv, 0x06, 0, 0x40);
  if (rc < 0)
   return rc;


  rc = r820t_write_reg_mask(priv, 0x1d, lna_top, 0x38);
  if (rc < 0)
   return rc;






  rc = r820t_write_reg_mask(priv, 0x1c, mixer_top, 0x04);
  if (rc < 0)
   return rc;


  rc = r820t_write_reg_mask(priv, 0x1e, lna_discharge, 0x1f);
  if (rc < 0)
   return rc;


  rc = r820t_write_reg_mask(priv, 0x1a, 0x00, 0x30);
  if (rc < 0)
   return rc;

  rc = r820t_write_reg_mask(priv, 0x10, 0x00, 0x04);
  if (rc < 0)
   return rc;
 }
 return 0;
}
