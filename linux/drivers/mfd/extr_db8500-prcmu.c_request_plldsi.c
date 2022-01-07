
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EAGAIN ;
 int PRCM_APE_RESETN_CLR ;
 int PRCM_APE_RESETN_DSIPLL_RESETN ;
 int PRCM_APE_RESETN_SET ;
 int PRCM_MMIP_LS_CLAMP_CLR ;
 int PRCM_MMIP_LS_CLAMP_DSIPLL_CLAMP ;
 int PRCM_MMIP_LS_CLAMP_DSIPLL_CLAMPI ;
 int PRCM_MMIP_LS_CLAMP_SET ;
 int PRCM_PLLDSI_ENABLE ;
 int PRCM_PLLDSI_ENABLE_PRCM_PLLDSI_ENABLE ;
 int plldsi_locked () ;
 int readl (int ) ;
 int udelay (int) ;
 int writel (int,int ) ;

__attribute__((used)) static int request_plldsi(bool enable)
{
 int r = 0;
 u32 val;

 writel((PRCM_MMIP_LS_CLAMP_DSIPLL_CLAMP |
  PRCM_MMIP_LS_CLAMP_DSIPLL_CLAMPI), (enable ?
  PRCM_MMIP_LS_CLAMP_CLR : PRCM_MMIP_LS_CLAMP_SET));

 val = readl(PRCM_PLLDSI_ENABLE);
 if (enable)
  val |= PRCM_PLLDSI_ENABLE_PRCM_PLLDSI_ENABLE;
 else
  val &= ~PRCM_PLLDSI_ENABLE_PRCM_PLLDSI_ENABLE;
 writel(val, PRCM_PLLDSI_ENABLE);

 if (enable) {
  unsigned int i;
  bool locked = plldsi_locked();

  for (i = 10; !locked && (i > 0); --i) {
   udelay(100);
   locked = plldsi_locked();
  }
  if (locked) {
   writel(PRCM_APE_RESETN_DSIPLL_RESETN,
    PRCM_APE_RESETN_SET);
  } else {
   writel((PRCM_MMIP_LS_CLAMP_DSIPLL_CLAMP |
    PRCM_MMIP_LS_CLAMP_DSIPLL_CLAMPI),
    PRCM_MMIP_LS_CLAMP_SET);
   val &= ~PRCM_PLLDSI_ENABLE_PRCM_PLLDSI_ENABLE;
   writel(val, PRCM_PLLDSI_ENABLE);
   r = -EAGAIN;
  }
 } else {
  writel(PRCM_APE_RESETN_DSIPLL_RESETN, PRCM_APE_RESETN_CLR);
 }
 return r;
}
