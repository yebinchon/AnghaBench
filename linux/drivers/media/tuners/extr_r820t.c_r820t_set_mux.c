
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct r820t_priv {int xtal_cap_sel; TYPE_1__* imr_data; scalar_t__ imr_done; } ;
struct r820t_freq_range {int freq; int open_d; int rf_mux_ploy; int xtal_cap20p; int xtal_cap10p; int xtal_cap0p; size_t imr_mem; int tf_c; } ;
struct TYPE_2__ {int gain_x; int phase_y; } ;


 int ARRAY_SIZE (struct r820t_freq_range*) ;





 struct r820t_freq_range* freq_ranges ;
 int r820t_write_reg (struct r820t_priv*,int,int ) ;
 int r820t_write_reg_mask (struct r820t_priv*,int,int,int) ;
 int tuner_dbg (char*,int,int) ;

__attribute__((used)) static int r820t_set_mux(struct r820t_priv *priv, u32 freq)
{
 const struct r820t_freq_range *range;
 int i, rc;
 u8 val, reg08, reg09;


 freq = freq / 1000000;
 for (i = 0; i < ARRAY_SIZE(freq_ranges) - 1; i++) {
  if (freq < freq_ranges[i + 1].freq)
   break;
 }
 range = &freq_ranges[i];

 tuner_dbg("set r820t range#%d for frequency %d MHz\n", i, freq);


 rc = r820t_write_reg_mask(priv, 0x17, range->open_d, 0x08);
 if (rc < 0)
  return rc;


 rc = r820t_write_reg_mask(priv, 0x1a, range->rf_mux_ploy, 0xc3);
 if (rc < 0)
  return rc;


 rc = r820t_write_reg(priv, 0x1b, range->tf_c);
 if (rc < 0)
  return rc;


 switch (priv->xtal_cap_sel) {
 case 128:
 case 129:
  val = range->xtal_cap20p | 0x08;
  break;
 case 130:
  val = range->xtal_cap10p | 0x08;
  break;
 case 132:
  val = range->xtal_cap0p | 0x00;
  break;
 default:
 case 131:
  val = range->xtal_cap0p | 0x08;
  break;
 }
 rc = r820t_write_reg_mask(priv, 0x10, val, 0x0b);
 if (rc < 0)
  return rc;

 if (priv->imr_done) {
  reg08 = priv->imr_data[range->imr_mem].gain_x;
  reg09 = priv->imr_data[range->imr_mem].phase_y;
 } else {
  reg08 = 0;
  reg09 = 0;
 }
 rc = r820t_write_reg_mask(priv, 0x08, reg08, 0x3f);
 if (rc < 0)
  return rc;

 rc = r820t_write_reg_mask(priv, 0x09, reg09, 0x3f);

 return rc;
}
