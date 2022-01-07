
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_16__ {int rx_errors; int rx_packets; int tx_errors; int tx_packets; } ;
struct net_device {TYPE_7__ stats; int dma; int irq; int base_addr; } ;
struct ifreq {int ifr_data; } ;
struct TYPE_17__ {int ptt; int dcd; int ptt_keyed; } ;
struct TYPE_15__ {int ptt; int dcd; int rx_errors; int rx_packets; int tx_errors; int tx_packets; int ptt_keyed; } ;
struct TYPE_14__ {int iobase; int midiiobase; int pariobase; int seriobase; int dma2; int dma; int irq; } ;
struct TYPE_12__ {int fulldup; int ppersist; int slottime; int tx_tail; int tx_delay; } ;
struct TYPE_18__ {int calibrate; char* drivername; char* modename; TYPE_8__ ocs; TYPE_6__ cs; TYPE_5__ mp; TYPE_3__ cp; } ;
struct hdlcdrv_ioctl {int cmd; TYPE_9__ data; } ;
struct TYPE_10__ {int fclk; int bps; int extmodem; int intclk; int loopback; } ;
struct TYPE_13__ {int slotcnt; int calibrate; } ;
struct TYPE_11__ {int fulldup; int ppersist; int slottime; int tx_tail; int tx_delay; } ;
struct baycom_state {int stat; int bitrate; TYPE_1__ cfg; TYPE_4__ hdlctx; int ptt_keyed; TYPE_2__ ch_params; } ;
typedef int hi ;


 int CAP_NET_ADMIN ;
 int CAP_SYS_RAWIO ;
 int EACCES ;
 int EFAULT ;
 int ENOIOCTLCMD ;
 int EPP_DCDBIT ;
 int EPP_PTTBIT ;
 int HDLCDRV_PARMASK_IOBASE ;
 int SIOCDEVPRIVATE ;
 int baycom_setmode (struct baycom_state*,char*) ;
 int capable (int ) ;
 scalar_t__ copy_from_user (struct hdlcdrv_ioctl*,int ,int) ;
 scalar_t__ copy_to_user (int ,struct hdlcdrv_ioctl*,int) ;
 struct baycom_state* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int sprintf (char*,char*,char*,char*,int,int,char*) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static int baycom_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 struct baycom_state *bc = netdev_priv(dev);
 struct hdlcdrv_ioctl hi;

 if (cmd != SIOCDEVPRIVATE)
  return -ENOIOCTLCMD;

 if (copy_from_user(&hi, ifr->ifr_data, sizeof(hi)))
  return -EFAULT;
 switch (hi.cmd) {
 default:
  return -ENOIOCTLCMD;

 case 137:
  hi.data.cp.tx_delay = bc->ch_params.tx_delay;
  hi.data.cp.tx_tail = bc->ch_params.tx_tail;
  hi.data.cp.slottime = bc->ch_params.slottime;
  hi.data.cp.ppersist = bc->ch_params.ppersist;
  hi.data.cp.fulldup = bc->ch_params.fulldup;
  break;

 case 130:
  if (!capable(CAP_NET_ADMIN))
   return -EACCES;
  bc->ch_params.tx_delay = hi.data.cp.tx_delay;
  bc->ch_params.tx_tail = hi.data.cp.tx_tail;
  bc->ch_params.slottime = hi.data.cp.slottime;
  bc->ch_params.ppersist = hi.data.cp.ppersist;
  bc->ch_params.fulldup = hi.data.cp.fulldup;
  bc->hdlctx.slotcnt = 1;
  return 0;

 case 135:
  hi.data.mp.iobase = dev->base_addr;
  hi.data.mp.irq = dev->irq;
  hi.data.mp.dma = dev->dma;
  hi.data.mp.dma2 = 0;
  hi.data.mp.seriobase = 0;
  hi.data.mp.pariobase = 0;
  hi.data.mp.midiiobase = 0;
  break;

 case 128:
  if ((!capable(CAP_SYS_RAWIO)) || netif_running(dev))
   return -EACCES;
  dev->base_addr = hi.data.mp.iobase;
  dev->irq = 0;
  dev->dma = 0;
  return 0;

 case 134:
  hi.data.cs.ptt = !!(bc->stat & EPP_PTTBIT);
  hi.data.cs.dcd = !(bc->stat & EPP_DCDBIT);
  hi.data.cs.ptt_keyed = bc->ptt_keyed;
  hi.data.cs.tx_packets = dev->stats.tx_packets;
  hi.data.cs.tx_errors = dev->stats.tx_errors;
  hi.data.cs.rx_packets = dev->stats.rx_packets;
  hi.data.cs.rx_errors = dev->stats.rx_errors;
  break;

 case 131:
  hi.data.ocs.ptt = !!(bc->stat & EPP_PTTBIT);
  hi.data.ocs.dcd = !(bc->stat & EPP_DCDBIT);
  hi.data.ocs.ptt_keyed = bc->ptt_keyed;
  break;

 case 139:
  if (!capable(CAP_SYS_RAWIO))
   return -EACCES;
  bc->hdlctx.calibrate = hi.data.calibrate * bc->bitrate / 8;
  return 0;

 case 138:
  strncpy(hi.data.drivername, "baycom_epp", sizeof(hi.data.drivername));
  break;

 case 136:
  sprintf(hi.data.modename, "%sclk,%smodem,fclk=%d,bps=%d%s",
   bc->cfg.intclk ? "int" : "ext",
   bc->cfg.extmodem ? "ext" : "int", bc->cfg.fclk, bc->cfg.bps,
   bc->cfg.loopback ? ",loopback" : "");
  break;

 case 129:
  if (!capable(CAP_NET_ADMIN) || netif_running(dev))
   return -EACCES;
  hi.data.modename[sizeof(hi.data.modename)-1] = '\0';
  return baycom_setmode(bc, hi.data.modename);

 case 133:
  strncpy(hi.data.modename, "intclk,extclk,intmodem,extmodem,divider=x",
   sizeof(hi.data.modename));
  break;

 case 132:
  return HDLCDRV_PARMASK_IOBASE;

 }
 if (copy_to_user(ifr->ifr_data, &hi, sizeof(hi)))
  return -EFAULT;
 return 0;
}
