
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int reset_val_sel; int line_ave_coef; int ob_start_h; int ob_start_v; int ob_v_sz_calc; } ;
struct TYPE_3__ {int mode; int win_count_calc; int win_h_sz_calc; int win_v_sz_calc; int win_start_h_calc; int win_start_v_calc; int clamp_pix_limit; int base_win_sel_calc; } ;
struct isif_black_clamp {int dc_offset; int bc_mode_color; int vert_start_sub; TYPE_2__ vert; TYPE_1__ horz; scalar_t__ en; } ;


 int CLAMPCFG ;
 int CLDCOFST ;
 int CLHWIN0 ;
 int CLHWIN1 ;
 int CLHWIN2 ;
 int CLSV ;
 int CLVWIN0 ;
 int CLVWIN1 ;
 int CLVWIN2 ;
 int CLVWIN3 ;
 int ISIF_BC_MODE_COLOR_SHIFT ;
 int ISIF_HORZ_BC_DISABLE ;
 int ISIF_HORZ_BC_MODE_SHIFT ;
 int ISIF_HORZ_BC_PIX_LIMIT_SHIFT ;
 int ISIF_HORZ_BC_WIN_H_SIZE_SHIFT ;
 int ISIF_HORZ_BC_WIN_SEL_SHIFT ;
 int ISIF_HORZ_BC_WIN_V_SIZE_SHIFT ;
 int ISIF_VERT_BC_LINE_AVE_COEF_SHIFT ;
 int ISIF_VERT_BC_RST_VAL_SEL_SHIFT ;
 int regw (int,int ) ;

__attribute__((used)) static void isif_config_bclamp(struct isif_black_clamp *bc)
{
 u32 val;





 regw(bc->dc_offset, CLDCOFST);

 if (bc->en) {
  val = bc->bc_mode_color << ISIF_BC_MODE_COLOR_SHIFT;


  val = val | 1 | (bc->horz.mode << ISIF_HORZ_BC_MODE_SHIFT);

  regw(val, CLAMPCFG);

  if (bc->horz.mode != ISIF_HORZ_BC_DISABLE) {
   val = bc->horz.win_count_calc |
         ((!!bc->horz.base_win_sel_calc) <<
    ISIF_HORZ_BC_WIN_SEL_SHIFT) |
         ((!!bc->horz.clamp_pix_limit) <<
    ISIF_HORZ_BC_PIX_LIMIT_SHIFT) |
         (bc->horz.win_h_sz_calc <<
    ISIF_HORZ_BC_WIN_H_SIZE_SHIFT) |
         (bc->horz.win_v_sz_calc <<
    ISIF_HORZ_BC_WIN_V_SIZE_SHIFT);
   regw(val, CLHWIN0);

   regw(bc->horz.win_start_h_calc, CLHWIN1);
   regw(bc->horz.win_start_v_calc, CLHWIN2);
  }




  val |=
  (bc->vert.reset_val_sel << ISIF_VERT_BC_RST_VAL_SEL_SHIFT) |
  (bc->vert.line_ave_coef << ISIF_VERT_BC_LINE_AVE_COEF_SHIFT);
  regw(val, CLVWIN0);


  regw(bc->vert.ob_start_h, CLVWIN1);

  regw(bc->vert.ob_start_v, CLVWIN2);

  regw(bc->vert.ob_v_sz_calc, CLVWIN3);

  regw(bc->vert_start_sub, CLSV);
 }
}
