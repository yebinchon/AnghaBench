
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fm10k_hw {int dummy; } ;


 int BUG_ON (int) ;
 int FM10K_PFVTCTL (int) ;
 int FM10K_QBRC_H (int) ;
 int FM10K_QBRC_L (int) ;
 int FM10K_QBTC_H (int) ;
 int FM10K_QBTC_L (int) ;
 int FM10K_QPRC (int) ;
 int FM10K_QPRDC (int) ;
 int FM10K_QPTC (int) ;
 int FM10K_RDBAH (int) ;
 int FM10K_RDBAL (int) ;
 int FM10K_RDH (int) ;
 int FM10K_RDLEN (int) ;
 int FM10K_RDT (int) ;
 int FM10K_REGS_LEN_Q ;
 int FM10K_RXDCTL (int) ;
 int FM10K_RXINT (int) ;
 int FM10K_RXQCTL (int) ;
 int FM10K_SRRCTL (int) ;
 int FM10K_TDBAH (int) ;
 int FM10K_TDBAL (int) ;
 int FM10K_TDH (int) ;
 int FM10K_TDLEN (int) ;
 int FM10K_TDT (int) ;
 int FM10K_TPH_RXCTRL (int) ;
 int FM10K_TPH_TXCTRL (int) ;
 int FM10K_TQDLOC (int) ;
 int FM10K_TXDCTL (int) ;
 int FM10K_TXINT (int) ;
 int FM10K_TXQCTL (int) ;
 int FM10K_TX_SGLORT (int) ;
 int fm10k_read_reg (struct fm10k_hw*,int ) ;

__attribute__((used)) static void fm10k_get_reg_q(struct fm10k_hw *hw, u32 *buff, int i)
{
 int idx = 0;

 buff[idx++] = fm10k_read_reg(hw, FM10K_RDBAL(i));
 buff[idx++] = fm10k_read_reg(hw, FM10K_RDBAH(i));
 buff[idx++] = fm10k_read_reg(hw, FM10K_RDLEN(i));
 buff[idx++] = fm10k_read_reg(hw, FM10K_TPH_RXCTRL(i));
 buff[idx++] = fm10k_read_reg(hw, FM10K_RDH(i));
 buff[idx++] = fm10k_read_reg(hw, FM10K_RDT(i));
 buff[idx++] = fm10k_read_reg(hw, FM10K_RXQCTL(i));
 buff[idx++] = fm10k_read_reg(hw, FM10K_RXDCTL(i));
 buff[idx++] = fm10k_read_reg(hw, FM10K_RXINT(i));
 buff[idx++] = fm10k_read_reg(hw, FM10K_SRRCTL(i));
 buff[idx++] = fm10k_read_reg(hw, FM10K_QPRC(i));
 buff[idx++] = fm10k_read_reg(hw, FM10K_QPRDC(i));
 buff[idx++] = fm10k_read_reg(hw, FM10K_QBRC_L(i));
 buff[idx++] = fm10k_read_reg(hw, FM10K_QBRC_H(i));
 buff[idx++] = fm10k_read_reg(hw, FM10K_TDBAL(i));
 buff[idx++] = fm10k_read_reg(hw, FM10K_TDBAH(i));
 buff[idx++] = fm10k_read_reg(hw, FM10K_TDLEN(i));
 buff[idx++] = fm10k_read_reg(hw, FM10K_TPH_TXCTRL(i));
 buff[idx++] = fm10k_read_reg(hw, FM10K_TDH(i));
 buff[idx++] = fm10k_read_reg(hw, FM10K_TDT(i));
 buff[idx++] = fm10k_read_reg(hw, FM10K_TXDCTL(i));
 buff[idx++] = fm10k_read_reg(hw, FM10K_TXQCTL(i));
 buff[idx++] = fm10k_read_reg(hw, FM10K_TXINT(i));
 buff[idx++] = fm10k_read_reg(hw, FM10K_QPTC(i));
 buff[idx++] = fm10k_read_reg(hw, FM10K_QBTC_L(i));
 buff[idx++] = fm10k_read_reg(hw, FM10K_QBTC_H(i));
 buff[idx++] = fm10k_read_reg(hw, FM10K_TQDLOC(i));
 buff[idx++] = fm10k_read_reg(hw, FM10K_TX_SGLORT(i));
 buff[idx++] = fm10k_read_reg(hw, FM10K_PFVTCTL(i));

 BUG_ON(idx != FM10K_REGS_LEN_Q);
}
