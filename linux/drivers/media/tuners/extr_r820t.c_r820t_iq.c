
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct r820t_sect_type {int phase_y; int gain_x; } ;
struct r820t_priv {int dummy; } ;


 int r820t_compre_cor (struct r820t_sect_type*) ;
 int r820t_compre_step (struct r820t_priv*,struct r820t_sect_type*,int) ;
 int r820t_imr_cross (struct r820t_priv*,struct r820t_sect_type*,int*) ;
 int r820t_iq_tree (struct r820t_priv*,struct r820t_sect_type*,int ,int ,int) ;
 int r820t_section (struct r820t_priv*,struct r820t_sect_type*) ;
 int r820t_vga_adjust (struct r820t_priv*) ;
 int r820t_write_reg_mask (struct r820t_priv*,int,int ,int) ;

__attribute__((used)) static int r820t_iq(struct r820t_priv *priv, struct r820t_sect_type *iq_pont)
{
 struct r820t_sect_type compare_iq[3];
 int rc;
 u8 x_direction = 0;
 u8 dir_reg, other_reg;

 r820t_vga_adjust(priv);

 rc = r820t_imr_cross(priv, compare_iq, &x_direction);
 if (rc < 0)
  return rc;

 if (x_direction == 1) {
  dir_reg = 0x08;
  other_reg = 0x09;
 } else {
  dir_reg = 0x09;
  other_reg = 0x08;
 }


 r820t_compre_cor(compare_iq);


 rc = r820t_compre_step(priv, compare_iq, dir_reg);
 if (rc < 0)
  return rc;


 rc = r820t_iq_tree(priv, compare_iq, compare_iq[0].gain_x,
    compare_iq[0].phase_y, dir_reg);
 if (rc < 0)
  return rc;


 r820t_compre_cor(compare_iq);


 rc = r820t_compre_step(priv, compare_iq, other_reg);
 if (rc < 0)
  return rc;


 rc = r820t_iq_tree(priv, compare_iq, compare_iq[0].gain_x,
    compare_iq[0].phase_y, other_reg);
 if (rc < 0)
  return rc;

 r820t_compre_cor(compare_iq);


 rc = r820t_section(priv, compare_iq);

 *iq_pont = compare_iq[0];


 rc = r820t_write_reg_mask(priv, 0x08, 0, 0x3f);
 if (rc < 0)
  return rc;

 rc = r820t_write_reg_mask(priv, 0x09, 0, 0x3f);

 return rc;
}
