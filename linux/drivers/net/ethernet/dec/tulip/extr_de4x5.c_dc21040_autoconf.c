
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct net_device {int base_addr; } ;
struct de4x5_private {int media; int tx_enable; int timeout; int autosense; int c_media; int local_state; } ;
typedef int s32 ;



 int AUTO ;



 int DE4X5_AUTOSENSE_MS ;
 int DISABLE_IRQs ;






 int dc21040_state (struct net_device*,int,int,int,int,int,int,int ) ;
 int de4x5_dbg_media (struct net_device*) ;
 int de4x5_save_skbs (struct net_device*) ;
 int de4x5_suspect_state (struct net_device*,int,int const,int ,int (*) (struct net_device*)) ;
 struct de4x5_private* netdev_priv (struct net_device*) ;
 int ping_media ;
 int reset_init_sia (struct net_device*,int,int,int) ;
 int test_tp ;

__attribute__((used)) static int
dc21040_autoconf(struct net_device *dev)
{
    struct de4x5_private *lp = netdev_priv(dev);
    u_long iobase = dev->base_addr;
    int next_tick = DE4X5_AUTOSENSE_MS;
    s32 imr;

    switch (lp->media) {
    case 131:
 DISABLE_IRQs;
 lp->tx_enable = 0;
 lp->timeout = -1;
 de4x5_save_skbs(dev);
 if ((lp->autosense == AUTO) || (lp->autosense == 129)) {
     lp->media = 129;
 } else if ((lp->autosense == 136) || (lp->autosense == 137) || (lp->autosense == 135)) {
     lp->media = 135;
 } else if (lp->autosense == 133) {
     lp->media = 133;
 } else {
     lp->media = 130;
 }
 lp->local_state = 0;
 next_tick = dc21040_autoconf(dev);
 break;

    case 129:
 next_tick = dc21040_state(dev, 0x8f01, 0xffff, 0x0000, 3000, 135,
                                           128, test_tp);
 break;

    case 128:
 next_tick = de4x5_suspect_state(dev, 1000, 129, test_tp, dc21040_autoconf);
 break;

    case 136:
    case 137:
    case 135:
 next_tick = dc21040_state(dev, 0x8f09, 0x0705, 0x0006, 3000, 133,
                                    134, ping_media);
 break;

    case 134:
 next_tick = de4x5_suspect_state(dev, 1000, 135, ping_media, dc21040_autoconf);
 break;

    case 133:
 next_tick = dc21040_state(dev, 0x3041, 0x0000, 0x0006, 3000,
                                130, 132, ping_media);
 break;

    case 132:
 next_tick = de4x5_suspect_state(dev, 1000, 133, ping_media, dc21040_autoconf);
 break;

    case 130:

 reset_init_sia(dev, 0x8f01, 0xffff, 0x0000);
 if (lp->media != lp->c_media) {
     de4x5_dbg_media(dev);
     lp->c_media = lp->media;
 }
 lp->media = 131;
 lp->tx_enable = 0;
 break;
    }

    return next_tick;
}
