
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct m5mols_info {struct v4l2_subdev sd; } ;


 int MON_CFIXB ;
 int MON_CFIXR ;
 int MON_EFFECT ;
 int PARM_EFFECT ;
 unsigned int REG_CFIXB_SEPIA ;
 unsigned int REG_CFIXR_SEPIA ;
 unsigned int REG_COLOR_EFFECT_OFF ;
 unsigned int REG_COLOR_EFFECT_ON ;
 unsigned int REG_EFFECT_EMBOSS ;
 unsigned int REG_EFFECT_NEGA ;
 unsigned int REG_EFFECT_OFF ;




 int m5mols_debug ;
 int m5mols_write (struct v4l2_subdev*,int ,unsigned int) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,unsigned int,unsigned int,unsigned int,unsigned int,int) ;

__attribute__((used)) static int m5mols_set_color_effect(struct m5mols_info *info, int val)
{
 unsigned int m_effect = REG_COLOR_EFFECT_OFF;
 unsigned int p_effect = REG_EFFECT_OFF;
 unsigned int cfix_r = 0, cfix_b = 0;
 struct v4l2_subdev *sd = &info->sd;
 int ret = 0;

 switch (val) {
 case 131:
  m_effect = REG_COLOR_EFFECT_ON;
  break;
 case 129:
  p_effect = REG_EFFECT_NEGA;
  break;
 case 130:
  p_effect = REG_EFFECT_EMBOSS;
  break;
 case 128:
  m_effect = REG_COLOR_EFFECT_ON;
  cfix_r = REG_CFIXR_SEPIA;
  cfix_b = REG_CFIXB_SEPIA;
  break;
 }

 ret = m5mols_write(sd, PARM_EFFECT, p_effect);
 if (!ret)
  ret = m5mols_write(sd, MON_EFFECT, m_effect);

 if (ret == 0 && m_effect == REG_COLOR_EFFECT_ON) {
  ret = m5mols_write(sd, MON_CFIXR, cfix_r);
  if (!ret)
   ret = m5mols_write(sd, MON_CFIXB, cfix_b);
 }

 v4l2_dbg(1, m5mols_debug, sd,
   "p_effect: %#x, m_effect: %#x, r: %#x, b: %#x (%d)\n",
   p_effect, m_effect, cfix_r, cfix_b, ret);

 return ret;
}
