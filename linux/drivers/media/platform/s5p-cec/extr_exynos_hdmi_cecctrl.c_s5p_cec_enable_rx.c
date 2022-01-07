
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct s5p_cec_dev {scalar_t__ reg; } ;


 scalar_t__ S5P_CEC_RX_CTRL ;
 int S5P_CEC_RX_CTRL_ENABLE ;
 int readb (scalar_t__) ;
 int writeb (int ,scalar_t__) ;

void s5p_cec_enable_rx(struct s5p_cec_dev *cec)
{
 u8 reg;

 reg = readb(cec->reg + S5P_CEC_RX_CTRL);
 reg |= S5P_CEC_RX_CTRL_ENABLE;
 writeb(reg, cec->reg + S5P_CEC_RX_CTRL);
}
