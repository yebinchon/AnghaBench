
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct net_device {int base_addr; } ;
struct TYPE_4__ {int autosense; } ;
struct de4x5_private {int media; int timeout; int tx_enable; int autosense; int infoblock_media; int fdx; size_t active; int local_state; int tmp; int tcount; int useSROM; int linkOK; TYPE_1__* phy; TYPE_2__ params; } ;
typedef int s32 ;
struct TYPE_3__ {int addr; } ;





 int AUTO ;


 int DE4X5_AUTOSENSE_MS ;
 int DE4X5_MII ;
 int DE4X5_OMR ;
 int DE4X5_SISR ;
 int DISABLE_IRQs ;

 int MII_ANA ;
 int MII_ANA_100M ;
 int MII_ANA_10M ;
 int MII_ANA_CSMA ;
 int MII_ANA_FDAM ;
 int MII_ANA_TAF ;
 int MII_ANLPA ;
 int MII_ANLPA_RF ;
 int MII_ANLPA_TAF ;
 int MII_CR ;
 int MII_CR_ASSE ;
 int MII_CR_RAN ;
 int MII_SR ;
 int MII_SR_ANC ;
 int MII_SR_ASSC ;
 int OMR_FDX ;
 int PDET_LINK_WAIT ;
 int SET_100Mb ;
 int SET_10Mb ;
 int SISR_SRA ;

 int TIMER_CB ;
 int TP ;


 int de4x5_init_connection (struct net_device*) ;
 int de4x5_reset_phy (struct net_device*) ;
 int de4x5_save_skbs (struct net_device*) ;
 int de4x5_suspect_state (struct net_device*,int,int const,int (*) (struct net_device*,int),int (*) (struct net_device*)) ;
 int inl (int ) ;
 int is_100_up (struct net_device*) ;
 int is_10_up (struct net_device*) ;
 int is_anc_capable (struct net_device*) ;
 int is_spd_100 (struct net_device*) ;
 int mii_rd (int ,int ,int ) ;
 int mii_wr (int,int ,int ,int ) ;
 struct de4x5_private* netdev_priv (struct net_device*) ;
 int outl (int,int ) ;
 int ping_media (struct net_device*,int) ;
 int printk (char*,int) ;
 int srom_map_media (struct net_device*) ;
 int test_for_100Mb (struct net_device*,int) ;
 int test_media (struct net_device*,int,int,int ,int ,int ,int) ;
 int test_mii_reg (struct net_device*,int ,int,int,int) ;
 int wait_for_link (struct net_device*) ;

__attribute__((used)) static int
dc2114x_autoconf(struct net_device *dev)
{
    struct de4x5_private *lp = netdev_priv(dev);
    u_long iobase = dev->base_addr;
    s32 cr, anlpa, ana, cap, irqs, irq_mask, imr, omr, slnk, sr, sts;
    int next_tick = DE4X5_AUTOSENSE_MS;

    switch (lp->media) {
    case 131:
        if (lp->timeout < 0) {
     DISABLE_IRQs;
     lp->tx_enable = 0;
     lp->linkOK = 0;
            lp->timeout = -1;
     de4x5_save_skbs(dev);
     if (lp->params.autosense & ~AUTO) {
  srom_map_media(dev);
  if (lp->media != lp->params.autosense) {
      lp->tcount++;
      lp->media = 131;
      return next_tick;
  }
  lp->media = 131;
     }
 }
 if ((next_tick = de4x5_reset_phy(dev)) < 0) {
     next_tick &= ~TIMER_CB;
 } else {
     if (lp->autosense == 129) {
  lp->media = 129;
     } else if (lp->autosense == 128) {
  lp->media = 128;
     } else if (lp->autosense == TP) {
  lp->media = TP;
     } else if (lp->autosense == 133) {
  lp->media = 133;
     } else if (lp->autosense == 135) {
  lp->media = 135;
     } else {
  lp->media = 130;
  if ((lp->infoblock_media == 136) &&
                      ((sr=is_anc_capable(dev)) & MII_SR_ANC)) {
      ana = (((sr >> 6) & MII_ANA_TAF) | MII_ANA_CSMA);
      ana &= (lp->fdx ? ~0 : ~MII_ANA_FDAM);
      mii_wr(ana, MII_ANA, lp->phy[lp->active].addr, DE4X5_MII);
      lp->media = 136;
  }
     }
     lp->local_state = 0;
     next_tick = dc2114x_autoconf(dev);
        }
 break;

    case 136:
 switch (lp->local_state) {
 case 0:
     if (lp->timeout < 0) {
  mii_wr(MII_CR_ASSE | MII_CR_RAN, MII_CR, lp->phy[lp->active].addr, DE4X5_MII);
     }
     cr = test_mii_reg(dev, MII_CR, MII_CR_RAN, 0, 500);
     if (cr < 0) {
  next_tick = cr & ~TIMER_CB;
     } else {
  if (cr) {
      lp->local_state = 0;
      lp->media = 130;
  } else {
      lp->local_state++;
  }
  next_tick = dc2114x_autoconf(dev);
     }
     break;

 case 1:
     sr = test_mii_reg(dev, MII_SR, MII_SR_ASSC, 1, 2000);
     if (sr < 0) {
  next_tick = sr & ~TIMER_CB;
     } else {
  lp->media = 130;
  lp->local_state = 0;
  if (sr) {
      lp->tmp = MII_SR_ASSC;
      anlpa = mii_rd(MII_ANLPA, lp->phy[lp->active].addr, DE4X5_MII);
      ana = mii_rd(MII_ANA, lp->phy[lp->active].addr, DE4X5_MII);
      if (!(anlpa & MII_ANLPA_RF) &&
    (cap = anlpa & MII_ANLPA_TAF & ana)) {
   if (cap & MII_ANA_100M) {
       lp->fdx = (ana & anlpa & MII_ANA_FDAM & MII_ANA_100M) != 0;
       lp->media = 129;
   } else if (cap & MII_ANA_10M) {
       lp->fdx = (ana & anlpa & MII_ANA_FDAM & MII_ANA_10M) != 0;
       lp->media = 128;
   }
      }
  }
  next_tick = dc2114x_autoconf(dev);
     }
     break;
 }
 break;

    case 135:
 if (!lp->tx_enable) {
     if (lp->timeout < 0) {
  omr = inl(DE4X5_OMR);
  outl(omr & ~OMR_FDX, DE4X5_OMR);
     }
     irqs = 0;
     irq_mask = 0;
     sts = test_media(dev,irqs, irq_mask, 0, 0, 0, 1000);
     if (sts < 0) {
  next_tick = sts & ~TIMER_CB;
     } else {
  if (!(inl(DE4X5_SISR) & SISR_SRA) && (lp->autosense == AUTO)) {
      lp->media = 133;
      next_tick = dc2114x_autoconf(dev);
  } else {
      lp->local_state = 1;
      de4x5_init_connection(dev);
  }
     }
 } else if (!lp->linkOK && (lp->autosense == AUTO)) {
     lp->media = 134;
     next_tick = 3000;
 }
 break;

    case 134:
 next_tick = de4x5_suspect_state(dev, 1000, 135, ping_media, dc2114x_autoconf);
 break;

    case 133:
 switch (lp->local_state) {
 case 0:
     if (lp->timeout < 0) {
  omr = inl(DE4X5_OMR);
  outl(omr & ~OMR_FDX, DE4X5_OMR);
     }
     irqs = 0;
     irq_mask = 0;
     sts = test_media(dev,irqs, irq_mask, 0, 0, 0, 1000);
     if (sts < 0) {
  next_tick = sts & ~TIMER_CB;
     } else {
  lp->local_state++;
  next_tick = dc2114x_autoconf(dev);
     }
     break;

 case 1:
     if (!lp->tx_enable) {
  if ((sts = ping_media(dev, 3000)) < 0) {
      next_tick = sts & ~TIMER_CB;
  } else {
      if (sts) {
   lp->local_state = 0;
   lp->tcount++;
   lp->media = 131;
      } else {
   de4x5_init_connection(dev);
      }
  }
     } else if (!lp->linkOK && (lp->autosense == AUTO)) {
  lp->media = 132;
  next_tick = 3000;
     }
     break;
 }
 break;

    case 132:
 next_tick = de4x5_suspect_state(dev, 1000, 133, ping_media, dc2114x_autoconf);
 break;

    case 130:
   if (srom_map_media(dev) < 0) {
       lp->tcount++;
       lp->media = 131;
       return next_tick;
   }
   if (lp->media == 129) {
       if ((slnk = test_for_100Mb(dev, 6500)) < 0) {
    lp->media = 130;
    return slnk & ~TIMER_CB;
       }
   } else {
       if (wait_for_link(dev) < 0) {
    lp->media = 130;
    return PDET_LINK_WAIT;
       }
   }
   if (lp->media == 136) {
       if (is_spd_100(dev)) {
    lp->media = 129;
       } else {
    lp->media = 128;
       }
       next_tick = dc2114x_autoconf(dev);
   } else if (((lp->media == 129) && is_100_up(dev)) ||
       (((lp->media == 128) || (lp->media == TP) ||
         (lp->media == 133) || (lp->media == 135)) &&
        is_10_up(dev))) {
       next_tick = dc2114x_autoconf(dev);
   } else {
       lp->tcount++;
       lp->media = 131;
   }
   break;

    case 128:
        next_tick = 3000;
 if (!lp->tx_enable) {
     SET_10Mb;
     de4x5_init_connection(dev);
 } else {
     if (!lp->linkOK && (lp->autosense == AUTO)) {
  if (!is_10_up(dev) || (!lp->useSROM && is_spd_100(dev))) {
      lp->media = 131;
      lp->tcount++;
      next_tick = DE4X5_AUTOSENSE_MS;
  }
     }
 }
 break;

    case 129:
        next_tick = 3000;
 if (!lp->tx_enable) {
     SET_100Mb;
     de4x5_init_connection(dev);
 } else {
     if (!lp->linkOK && (lp->autosense == AUTO)) {
  if (!is_100_up(dev) || (!lp->useSROM && !is_spd_100(dev))) {
      lp->media = 131;
      lp->tcount++;
      next_tick = DE4X5_AUTOSENSE_MS;
  }
     }
 }
 break;

    default:
 lp->tcount++;
printk("Huh?: media:%02x\n", lp->media);
 lp->media = 131;
 break;
    }

    return next_tick;
}
