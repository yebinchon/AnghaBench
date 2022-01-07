
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct s5p_cec_dev {scalar_t__ reg; } ;


 scalar_t__ S5P_CEC_RX_CTRL ;
 int S5P_CEC_RX_CTRL_RESET ;
 int readb (scalar_t__) ;
 int writeb (int,scalar_t__) ;

void s5p_cec_rx_reset(struct s5p_cec_dev *cec)
{
 u8 reg;

 writeb(S5P_CEC_RX_CTRL_RESET, cec->reg + S5P_CEC_RX_CTRL);

 reg = readb(cec->reg + 0xc4);
 reg &= ~0x1;
 writeb(reg, cec->reg + 0xc4);
}
