
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct alx_hw {int rx_ctrl; } ;


 int ALX_DMA_MAC_RST_TO ;
 int ALX_IMR ;
 int ALX_ISR ;
 int ALX_ISR_DIS ;
 int ALX_MAC_CTRL ;
 int ALX_MASTER ;
 int ALX_MASTER_DMA_MAC_RST ;
 int ALX_MASTER_OOB_DIS ;
 int ALX_MASTER_PCLKSEL_SRDS ;
 int ALX_MISC ;
 int ALX_MISC3 ;
 int ALX_MISC3_25M_BY_SW ;
 int ALX_MISC3_25M_NOTO_INTNL ;
 int ALX_MISC_INTNLOSC_OPEN ;
 int ALX_MISC_ISO_EN ;
 int ALX_MSIX_MASK ;
 int ALX_PMCTRL ;
 int ALX_PMCTRL_L0S_EN ;
 int ALX_PMCTRL_L1_EN ;
 int ALX_RFD_PIDX ;
 int ALX_SERDES ;
 int ALX_SERDES_MACCLK_SLWDWN ;
 int ALX_SERDES_PHYCLK_SLWDWN ;
 int EIO ;
 int alx_hw_revision (struct alx_hw*) ;
 scalar_t__ alx_hw_with_cr (struct alx_hw*) ;
 scalar_t__ alx_is_rev_a (int ) ;
 int alx_read_mem32 (struct alx_hw*,int ) ;
 int alx_reset_osc (struct alx_hw*,int ) ;
 int alx_stop_mac (struct alx_hw*) ;
 int alx_write_mem32 (struct alx_hw*,int ,int) ;
 int udelay (int) ;

int alx_reset_mac(struct alx_hw *hw)
{
 u32 val, pmctrl;
 int i, ret;
 u8 rev;
 bool a_cr;

 pmctrl = 0;
 rev = alx_hw_revision(hw);
 a_cr = alx_is_rev_a(rev) && alx_hw_with_cr(hw);


 alx_write_mem32(hw, ALX_MSIX_MASK, 0xFFFFFFFF);
 alx_write_mem32(hw, ALX_IMR, 0);
 alx_write_mem32(hw, ALX_ISR, ALX_ISR_DIS);

 ret = alx_stop_mac(hw);
 if (ret)
  return ret;


 alx_write_mem32(hw, ALX_RFD_PIDX, 1);


 if (a_cr) {
  pmctrl = alx_read_mem32(hw, ALX_PMCTRL);
  if (pmctrl & (ALX_PMCTRL_L1_EN | ALX_PMCTRL_L0S_EN))
   alx_write_mem32(hw, ALX_PMCTRL,
     pmctrl & ~(ALX_PMCTRL_L1_EN |
         ALX_PMCTRL_L0S_EN));
 }


 val = alx_read_mem32(hw, ALX_MASTER);
 alx_write_mem32(hw, ALX_MASTER,
   val | ALX_MASTER_DMA_MAC_RST | ALX_MASTER_OOB_DIS);


 udelay(10);
 for (i = 0; i < ALX_DMA_MAC_RST_TO; i++) {
  val = alx_read_mem32(hw, ALX_RFD_PIDX);
  if (val == 0)
   break;
  udelay(10);
 }
 for (; i < ALX_DMA_MAC_RST_TO; i++) {
  val = alx_read_mem32(hw, ALX_MASTER);
  if ((val & ALX_MASTER_DMA_MAC_RST) == 0)
   break;
  udelay(10);
 }
 if (i == ALX_DMA_MAC_RST_TO)
  return -EIO;
 udelay(10);

 if (a_cr) {
  alx_write_mem32(hw, ALX_MASTER, val | ALX_MASTER_PCLKSEL_SRDS);

  if (pmctrl & (ALX_PMCTRL_L1_EN | ALX_PMCTRL_L0S_EN))
   alx_write_mem32(hw, ALX_PMCTRL, pmctrl);
 }

 alx_reset_osc(hw, rev);




 val = alx_read_mem32(hw, ALX_MISC3);
 alx_write_mem32(hw, ALX_MISC3,
   (val & ~ALX_MISC3_25M_BY_SW) |
   ALX_MISC3_25M_NOTO_INTNL);
 val = alx_read_mem32(hw, ALX_MISC);
 val &= ~ALX_MISC_INTNLOSC_OPEN;
 if (alx_is_rev_a(rev))
  val &= ~ALX_MISC_ISO_EN;
 alx_write_mem32(hw, ALX_MISC, val);
 udelay(20);


 alx_write_mem32(hw, ALX_MAC_CTRL, hw->rx_ctrl);

 val = alx_read_mem32(hw, ALX_SERDES);
 alx_write_mem32(hw, ALX_SERDES,
   val | ALX_SERDES_MACCLK_SLWDWN |
   ALX_SERDES_PHYCLK_SLWDWN);

 return 0;
}
