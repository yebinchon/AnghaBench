
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct img_ir_timing_regvals {int s11; int s10; int s01; int s00; int ldr; int ft; } ;
struct img_ir_priv_hw {int flags; int * filters; } ;
struct img_ir_priv {int dev; struct img_ir_priv_hw hw; } ;
typedef enum rc_filter_type { ____Placeholder_rc_filter_type } rc_filter_type ;


 int BIT (int) ;
 int IMG_IR_FREE_SYMB_TIMING ;
 int IMG_IR_LEAD_SYMB_TIMING ;
 int IMG_IR_S00_SYMB_TIMING ;
 int IMG_IR_S01_SYMB_TIMING ;
 int IMG_IR_S10_SYMB_TIMING ;
 int IMG_IR_S11_SYMB_TIMING ;
 int dev_dbg (int ,char*,int ,int ,int ,int ,int ,int ) ;
 int img_ir_free_timing_dynamic (int ,int *) ;
 int img_ir_write (struct img_ir_priv*,int ,int ) ;

__attribute__((used)) static void img_ir_write_timings(struct img_ir_priv *priv,
     struct img_ir_timing_regvals *regs,
     enum rc_filter_type type)
{
 struct img_ir_priv_hw *hw = &priv->hw;


 u32 ft = regs->ft;
 if (hw->flags & BIT(type))
  ft = img_ir_free_timing_dynamic(regs->ft, &hw->filters[type]);

 img_ir_write(priv, IMG_IR_LEAD_SYMB_TIMING, regs->ldr);
 img_ir_write(priv, IMG_IR_S00_SYMB_TIMING, regs->s00);
 img_ir_write(priv, IMG_IR_S01_SYMB_TIMING, regs->s01);
 img_ir_write(priv, IMG_IR_S10_SYMB_TIMING, regs->s10);
 img_ir_write(priv, IMG_IR_S11_SYMB_TIMING, regs->s11);
 img_ir_write(priv, IMG_IR_FREE_SYMB_TIMING, ft);
 dev_dbg(priv->dev, "timings: ldr=%#x, s=[%#x, %#x, %#x, %#x], ft=%#x\n",
  regs->ldr, regs->s00, regs->s01, regs->s10, regs->s11, ft);
}
