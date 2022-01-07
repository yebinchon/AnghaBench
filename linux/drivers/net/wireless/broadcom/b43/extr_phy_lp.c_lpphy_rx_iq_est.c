
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct lpphy_iq_est {int iq_prod; int i_pwr; int q_pwr; } ;
struct b43_wldev {int dummy; } ;


 int B43_LPPHY_CRSGAIN_CTL ;
 int B43_LPPHY_IQ_ACC_HI_ADDR ;
 int B43_LPPHY_IQ_ACC_LO_ADDR ;
 int B43_LPPHY_IQ_ENABLE_WAIT_TIME_ADDR ;
 int B43_LPPHY_IQ_I_PWR_ACC_HI_ADDR ;
 int B43_LPPHY_IQ_I_PWR_ACC_LO_ADDR ;
 int B43_LPPHY_IQ_NUM_SMPLS_ADDR ;
 int B43_LPPHY_IQ_Q_PWR_ACC_HI_ADDR ;
 int B43_LPPHY_IQ_Q_PWR_ACC_LO_ADDR ;
 int b43_phy_mask (struct b43_wldev*,int ,int) ;
 int b43_phy_maskset (struct b43_wldev*,int ,int,int ) ;
 int b43_phy_read (struct b43_wldev*,int ) ;
 int b43_phy_set (struct b43_wldev*,int ,int) ;
 int b43_phy_write (struct b43_wldev*,int ,int ) ;
 int msleep (int) ;

__attribute__((used)) static bool lpphy_rx_iq_est(struct b43_wldev *dev, u16 samples, u8 time,
      struct lpphy_iq_est *iq_est)
{
 int i;

 b43_phy_mask(dev, B43_LPPHY_CRSGAIN_CTL, 0xFFF7);
 b43_phy_write(dev, B43_LPPHY_IQ_NUM_SMPLS_ADDR, samples);
 b43_phy_maskset(dev, B43_LPPHY_IQ_ENABLE_WAIT_TIME_ADDR, 0xFF00, time);
 b43_phy_mask(dev, B43_LPPHY_IQ_ENABLE_WAIT_TIME_ADDR, 0xFEFF);
 b43_phy_set(dev, B43_LPPHY_IQ_ENABLE_WAIT_TIME_ADDR, 0x200);

 for (i = 0; i < 500; i++) {
  if (!(b43_phy_read(dev,
    B43_LPPHY_IQ_ENABLE_WAIT_TIME_ADDR) & 0x200))
   break;
  msleep(1);
 }

 if ((b43_phy_read(dev, B43_LPPHY_IQ_ENABLE_WAIT_TIME_ADDR) & 0x200)) {
  b43_phy_set(dev, B43_LPPHY_CRSGAIN_CTL, 0x8);
  return 0;
 }

 iq_est->iq_prod = b43_phy_read(dev, B43_LPPHY_IQ_ACC_HI_ADDR);
 iq_est->iq_prod <<= 16;
 iq_est->iq_prod |= b43_phy_read(dev, B43_LPPHY_IQ_ACC_LO_ADDR);

 iq_est->i_pwr = b43_phy_read(dev, B43_LPPHY_IQ_I_PWR_ACC_HI_ADDR);
 iq_est->i_pwr <<= 16;
 iq_est->i_pwr |= b43_phy_read(dev, B43_LPPHY_IQ_I_PWR_ACC_LO_ADDR);

 iq_est->q_pwr = b43_phy_read(dev, B43_LPPHY_IQ_Q_PWR_ACC_HI_ADDR);
 iq_est->q_pwr <<= 16;
 iq_est->q_pwr |= b43_phy_read(dev, B43_LPPHY_IQ_Q_PWR_ACC_LO_ADDR);

 b43_phy_set(dev, B43_LPPHY_CRSGAIN_CTL, 0x8);
 return 1;
}
