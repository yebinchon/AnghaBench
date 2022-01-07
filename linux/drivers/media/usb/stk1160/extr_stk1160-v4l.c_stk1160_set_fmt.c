
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stk1160_decimate_ctrl {scalar_t__ col_mode; scalar_t__ row_mode; int row_n; int col_n; scalar_t__ row_en; scalar_t__ col_en; } ;
struct stk1160 {int dummy; } ;


 scalar_t__ STK1160_DECIMATE_MORE_THAN_HALF ;
 int STK1160_DEC_UNIT_SIZE ;
 int STK1160_DMCTRL ;
 int STK1160_DMCTRL_H_UNITS ;
 int STK1160_DMCTRL_V_UNITS ;
 int STK1160_H_DEC_EN ;
 int STK1160_H_DEC_MODE ;
 int STK1160_V_DEC_EN ;
 int STK1160_V_DEC_MODE ;
 int stk1160_dbg (char*,int ,int ,int ) ;
 int stk1160_write_reg (struct stk1160*,int ,int ) ;

__attribute__((used)) static void stk1160_set_fmt(struct stk1160 *dev,
       struct stk1160_decimate_ctrl *ctrl)
{
 u32 val = 0;

 if (ctrl) {






  val |= STK1160_DEC_UNIT_SIZE;
  val |= ctrl->col_en ? STK1160_H_DEC_EN : 0;
  val |= ctrl->row_en ? STK1160_V_DEC_EN : 0;
  val |= ctrl->col_mode ==
   STK1160_DECIMATE_MORE_THAN_HALF ?
   STK1160_H_DEC_MODE : 0;
  val |= ctrl->row_mode ==
   STK1160_DECIMATE_MORE_THAN_HALF ?
   STK1160_V_DEC_MODE : 0;


  stk1160_write_reg(dev, STK1160_DMCTRL_H_UNITS, ctrl->col_n);

  stk1160_write_reg(dev, STK1160_DMCTRL_V_UNITS, ctrl->row_n);

  stk1160_dbg("decimate 0x%x, column units %d, row units %d\n",
       val, ctrl->col_n, ctrl->row_n);
 }


 stk1160_write_reg(dev, STK1160_DMCTRL, val);
}
