
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nphy_iq_est {int i0_pwr; int q0_pwr; int iq0_prod; int i1_pwr; int q1_pwr; int iq1_prod; } ;
struct b43_wldev {int dummy; } ;


 int B43_NPHY_IQEST_CMD ;
 int B43_NPHY_IQEST_CMD_MODE ;
 int B43_NPHY_IQEST_CMD_START ;
 int B43_NPHY_IQEST_IPACC_HI0 ;
 int B43_NPHY_IQEST_IPACC_HI1 ;
 int B43_NPHY_IQEST_IPACC_LO0 ;
 int B43_NPHY_IQEST_IPACC_LO1 ;
 int B43_NPHY_IQEST_IQACC_HI0 ;
 int B43_NPHY_IQEST_IQACC_HI1 ;
 int B43_NPHY_IQEST_IQACC_LO0 ;
 int B43_NPHY_IQEST_IQACC_LO1 ;
 int B43_NPHY_IQEST_QPACC_HI0 ;
 int B43_NPHY_IQEST_QPACC_HI1 ;
 int B43_NPHY_IQEST_QPACC_LO0 ;
 int B43_NPHY_IQEST_QPACC_LO1 ;
 int B43_NPHY_IQEST_SAMCNT ;
 int B43_NPHY_IQEST_WT ;
 int B43_NPHY_IQEST_WT_VAL ;
 int b43_phy_mask (struct b43_wldev*,int ,int) ;
 int b43_phy_maskset (struct b43_wldev*,int ,int ,int ) ;
 int b43_phy_read (struct b43_wldev*,int ) ;
 int b43_phy_set (struct b43_wldev*,int ,int) ;
 int b43_phy_write (struct b43_wldev*,int ,int) ;
 int memset (struct nphy_iq_est*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void b43_nphy_rx_iq_est(struct b43_wldev *dev, struct nphy_iq_est *est,
    u16 samps, u8 time, bool wait)
{
 int i;
 u16 tmp;

 b43_phy_write(dev, B43_NPHY_IQEST_SAMCNT, samps);
 b43_phy_maskset(dev, B43_NPHY_IQEST_WT, ~B43_NPHY_IQEST_WT_VAL, time);
 if (wait)
  b43_phy_set(dev, B43_NPHY_IQEST_CMD, B43_NPHY_IQEST_CMD_MODE);
 else
  b43_phy_mask(dev, B43_NPHY_IQEST_CMD, ~B43_NPHY_IQEST_CMD_MODE);

 b43_phy_set(dev, B43_NPHY_IQEST_CMD, B43_NPHY_IQEST_CMD_START);

 for (i = 1000; i; i--) {
  tmp = b43_phy_read(dev, B43_NPHY_IQEST_CMD);
  if (!(tmp & B43_NPHY_IQEST_CMD_START)) {
   est->i0_pwr = (b43_phy_read(dev, B43_NPHY_IQEST_IPACC_HI0) << 16) |
     b43_phy_read(dev, B43_NPHY_IQEST_IPACC_LO0);
   est->q0_pwr = (b43_phy_read(dev, B43_NPHY_IQEST_QPACC_HI0) << 16) |
     b43_phy_read(dev, B43_NPHY_IQEST_QPACC_LO0);
   est->iq0_prod = (b43_phy_read(dev, B43_NPHY_IQEST_IQACC_HI0) << 16) |
     b43_phy_read(dev, B43_NPHY_IQEST_IQACC_LO0);

   est->i1_pwr = (b43_phy_read(dev, B43_NPHY_IQEST_IPACC_HI1) << 16) |
     b43_phy_read(dev, B43_NPHY_IQEST_IPACC_LO1);
   est->q1_pwr = (b43_phy_read(dev, B43_NPHY_IQEST_QPACC_HI1) << 16) |
     b43_phy_read(dev, B43_NPHY_IQEST_QPACC_LO1);
   est->iq1_prod = (b43_phy_read(dev, B43_NPHY_IQEST_IQACC_HI1) << 16) |
     b43_phy_read(dev, B43_NPHY_IQEST_IQACC_LO1);
   return;
  }
  udelay(10);
 }
 memset(est, 0, sizeof(*est));
}
