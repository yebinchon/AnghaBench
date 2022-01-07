
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct net_device {int base_addr; } ;
struct de4x5_private {int media; int tx_enable; int timeout; int autosense; int local_state; int c_media; int linkOK; } ;
typedef int s32 ;






 int AUTO ;


 int DE4X5_AUTOSENSE_MS ;
 int DE4X5_OMR ;
 int DE4X5_SISR ;
 int DISABLE_IRQs ;
 int IMR_LFM ;
 int IMR_LPM ;


 int OMR_FDX ;
 int SISR_NRA ;
 int SISR_SRA ;
 int STS_LNF ;
 int STS_LNP ;
 int TIMER_CB ;



 int de4x5_dbg_media (struct net_device*) ;
 int de4x5_init_connection (struct net_device*) ;
 int de4x5_save_skbs (struct net_device*) ;
 int de4x5_suspect_state (struct net_device*,int,int const,int (*) (struct net_device*,int),int (*) (struct net_device*)) ;
 int inl (int ) ;
 struct de4x5_private* netdev_priv (struct net_device*) ;
 int outl (int,int ) ;
 int ping_media (struct net_device*,int) ;
 int reset_init_sia (struct net_device*,int,int,int) ;
 int test_ans (struct net_device*,int,int,int) ;
 int test_media (struct net_device*,int,int,int,int,int,int) ;
 int test_tp (struct net_device*,int) ;

__attribute__((used)) static int
dc21041_autoconf(struct net_device *dev)
{
    struct de4x5_private *lp = netdev_priv(dev);
    u_long iobase = dev->base_addr;
    s32 sts, irqs, irq_mask, imr, omr;
    int next_tick = DE4X5_AUTOSENSE_MS;

    switch (lp->media) {
    case 132:
 DISABLE_IRQs;
 lp->tx_enable = 0;
 lp->timeout = -1;
 de4x5_save_skbs(dev);
 if ((lp->autosense == AUTO) || (lp->autosense == 129)) {
     lp->media = 130;
 } else if (lp->autosense == 130) {
     lp->media = 130;
 } else if (lp->autosense == 134) {
     lp->media = 134;
 } else if (lp->autosense == 136) {
     lp->media = 136;
 } else {
     lp->media = 131;
 }
 lp->local_state = 0;
 next_tick = dc21041_autoconf(dev);
 break;

    case 129:
 if (lp->timeout < 0) {
     omr = inl(DE4X5_OMR);
     outl(omr | OMR_FDX, DE4X5_OMR);
 }
 irqs = STS_LNF | STS_LNP;
 irq_mask = IMR_LFM | IMR_LPM;
 sts = test_media(dev, irqs, irq_mask, 0xef01, 0xffff, 0x0008, 2400);
 if (sts < 0) {
     next_tick = sts & ~TIMER_CB;
 } else {
     if (sts & STS_LNP) {
  lp->media = 138;
     } else {
  lp->media = 136;
     }
     next_tick = dc21041_autoconf(dev);
 }
 break;

    case 138:
 if (!lp->tx_enable) {
     irqs = STS_LNP;
     irq_mask = IMR_LPM;
     sts = test_ans(dev, irqs, irq_mask, 3000);
     if (sts < 0) {
  next_tick = sts & ~TIMER_CB;
     } else {
  if (!(sts & STS_LNP) && (lp->autosense == AUTO)) {
      lp->media = 130;
      next_tick = dc21041_autoconf(dev);
  } else {
      lp->local_state = 1;
      de4x5_init_connection(dev);
  }
     }
 } else if (!lp->linkOK && (lp->autosense == AUTO)) {
     lp->media = 137;
     next_tick = 3000;
 }
 break;

    case 137:
 next_tick = de4x5_suspect_state(dev, 1000, 138, test_tp, dc21041_autoconf);
 break;

    case 130:
 if (!lp->tx_enable) {
     if (lp->timeout < 0) {
  omr = inl(DE4X5_OMR);
  outl(omr & ~OMR_FDX, DE4X5_OMR);
     }
     irqs = STS_LNF | STS_LNP;
     irq_mask = IMR_LFM | IMR_LPM;
     sts = test_media(dev,irqs, irq_mask, 0xef01, 0xff3f, 0x0008, 2400);
     if (sts < 0) {
  next_tick = sts & ~TIMER_CB;
     } else {
  if (!(sts & STS_LNP) && (lp->autosense == AUTO)) {
      if (inl(DE4X5_SISR) & SISR_NRA) {
   lp->media = 136;
      } else {
   lp->media = 134;
      }
      next_tick = dc21041_autoconf(dev);
  } else {
      lp->local_state = 1;
      de4x5_init_connection(dev);
  }
     }
 } else if (!lp->linkOK && (lp->autosense == AUTO)) {
     lp->media = 128;
     next_tick = 3000;
 }
 break;

    case 128:
 next_tick = de4x5_suspect_state(dev, 1000, 130, test_tp, dc21041_autoconf);
 break;

    case 136:
 if (!lp->tx_enable) {
     if (lp->timeout < 0) {
  omr = inl(DE4X5_OMR);
  outl(omr & ~OMR_FDX, DE4X5_OMR);
     }
     irqs = 0;
     irq_mask = 0;
     sts = test_media(dev,irqs, irq_mask, 0xef09, 0xf73d, 0x000e, 1000);
     if (sts < 0) {
  next_tick = sts & ~TIMER_CB;
     } else {
  if (!(inl(DE4X5_SISR) & SISR_SRA) && (lp->autosense == AUTO)) {
      lp->media = 134;
      next_tick = dc21041_autoconf(dev);
  } else {
      lp->local_state = 1;
      de4x5_init_connection(dev);
  }
     }
 } else if (!lp->linkOK && (lp->autosense == AUTO)) {
     lp->media = 135;
     next_tick = 3000;
 }
 break;

    case 135:
 next_tick = de4x5_suspect_state(dev, 1000, 136, ping_media, dc21041_autoconf);
 break;

    case 134:
 switch (lp->local_state) {
 case 0:
     if (lp->timeout < 0) {
  omr = inl(DE4X5_OMR);
  outl(omr & ~OMR_FDX, DE4X5_OMR);
     }
     irqs = 0;
     irq_mask = 0;
     sts = test_media(dev,irqs, irq_mask, 0xef09, 0xf73d, 0x0006, 1000);
     if (sts < 0) {
  next_tick = sts & ~TIMER_CB;
     } else {
  lp->local_state++;
  next_tick = dc21041_autoconf(dev);
     }
     break;

 case 1:
     if (!lp->tx_enable) {
  if ((sts = ping_media(dev, 3000)) < 0) {
      next_tick = sts & ~TIMER_CB;
  } else {
      if (sts) {
   lp->local_state = 0;
   lp->media = 131;
      } else {
   de4x5_init_connection(dev);
      }
  }
     } else if (!lp->linkOK && (lp->autosense == AUTO)) {
  lp->media = 133;
  next_tick = 3000;
     }
     break;
 }
 break;

    case 133:
 next_tick = de4x5_suspect_state(dev, 1000, 134, ping_media, dc21041_autoconf);
 break;

    case 131:
 omr = inl(DE4X5_OMR);
 outl(omr | OMR_FDX, DE4X5_OMR);
 reset_init_sia(dev, 0xef01, 0xffff, 0x0008);
 if (lp->media != lp->c_media) {
     de4x5_dbg_media(dev);
     lp->c_media = lp->media;
 }
 lp->media = 132;
 lp->tx_enable = 0;
 break;
    }

    return next_tick;
}
