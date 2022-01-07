
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r820t_sect_type {int gain_x; int phase_y; } ;
struct r820t_priv {int dummy; } ;


 int r820t_compre_cor (struct r820t_sect_type*) ;
 int r820t_iq_tree (struct r820t_priv*,struct r820t_sect_type*,int,int ,int) ;

__attribute__((used)) static int r820t_section(struct r820t_priv *priv,
    struct r820t_sect_type *iq_point)
{
 int rc;
 struct r820t_sect_type compare_iq[3], compare_bet[3];


 if (!(iq_point->gain_x & 0x1f))
  compare_iq[0].gain_x = ((iq_point->gain_x) & 0xdf) + 1;
 else
  compare_iq[0].gain_x = iq_point->gain_x - 1;
 compare_iq[0].phase_y = iq_point->phase_y;


 rc = r820t_iq_tree(priv, compare_iq, compare_iq[0].gain_x,
   compare_iq[0].phase_y, 0x08);
 if (rc < 0)
  return rc;

 r820t_compre_cor(compare_iq);

 compare_bet[0] = compare_iq[0];


 compare_iq[0].gain_x = iq_point->gain_x;
 compare_iq[0].phase_y = iq_point->phase_y;

 rc = r820t_iq_tree(priv, compare_iq, compare_iq[0].gain_x,
      compare_iq[0].phase_y, 0x08);
 if (rc < 0)
  return rc;

 r820t_compre_cor(compare_iq);

 compare_bet[1] = compare_iq[0];


 if ((iq_point->gain_x & 0x1f) == 0x00)
  compare_iq[0].gain_x = ((iq_point->gain_x) | 0x20) + 1;
 else
  compare_iq[0].gain_x = iq_point->gain_x + 1;
 compare_iq[0].phase_y = iq_point->phase_y;

 rc = r820t_iq_tree(priv, compare_iq, compare_iq[0].gain_x,
      compare_iq[0].phase_y, 0x08);
 if (rc < 0)
  return rc;

 r820t_compre_cor(compare_iq);

 compare_bet[2] = compare_iq[0];

 r820t_compre_cor(compare_bet);

 *iq_point = compare_bet[0];

 return 0;
}
