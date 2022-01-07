
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_14__ ;
typedef struct TYPE_18__ TYPE_13__ ;
typedef struct TYPE_17__ TYPE_12__ ;
typedef struct TYPE_16__ TYPE_11__ ;
typedef struct TYPE_15__ TYPE_10__ ;


struct TYPE_22__ {int rx_errors; int rx_packets; int tx_errors; int tx_packets; } ;
struct net_device {TYPE_3__ stats; int dma; int irq; int base_addr; } ;
struct ifreq {int ifr_data; } ;
struct TYPE_27__ {size_t rd; size_t wr; int * buffer; } ;
struct TYPE_26__ {size_t rd; size_t wr; int * buffer; } ;
struct TYPE_25__ {int bitrate; } ;
struct TYPE_17__ {int slotcnt; int calibrate; } ;
struct TYPE_23__ {int dcd; } ;
struct TYPE_20__ {int midiiobase; int pariobase; int seriobase; int dma2; } ;
struct TYPE_15__ {int fulldup; int ppersist; int slottime; int tx_tail; int tx_delay; } ;
struct hdlcdrv_state {TYPE_9__* ops; TYPE_8__ bitbuf_hdlc; TYPE_7__ bitbuf_channel; TYPE_6__ par; TYPE_12__ hdlctx; int ptt_keyed; TYPE_4__ hdlcrx; TYPE_1__ ptt_out; TYPE_10__ ch_params; } ;
struct TYPE_24__ {int ptt_keyed; int dcd; void* ptt; } ;
struct TYPE_21__ {int rx_errors; int rx_packets; int tx_errors; int tx_packets; int ptt_keyed; int dcd; void* ptt; } ;
struct TYPE_19__ {int midiiobase; int pariobase; int seriobase; int dma2; int dma; int irq; int iobase; } ;
struct TYPE_16__ {int fulldup; int ppersist; int slottime; int tx_tail; int tx_delay; } ;
struct TYPE_18__ {int calibrate; char* drivername; int bits; TYPE_5__ ocs; TYPE_2__ cs; TYPE_14__ mp; TYPE_11__ cp; } ;
struct hdlcdrv_ioctl {int cmd; TYPE_13__ data; } ;
typedef int bi ;
struct TYPE_28__ {int (* ioctl ) (struct net_device*,struct ifreq*,struct hdlcdrv_ioctl*,int) ;int drvname; } ;


 int CAP_NET_ADMIN ;
 int CAP_SYS_RAWIO ;
 int EACCES ;
 int EAGAIN ;
 int EFAULT ;
 int EINVAL ;
 int ENOIOCTLCMD ;
 int EPERM ;
 int INT_MAX ;
 int SIOCDEVPRIVATE ;
 int capable (int ) ;
 scalar_t__ copy_from_user (struct hdlcdrv_ioctl*,int ,int) ;
 scalar_t__ copy_to_user (int ,struct hdlcdrv_ioctl*,int) ;
 void* hdlcdrv_ptt (struct hdlcdrv_state*) ;
 struct hdlcdrv_state* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int strncpy (char*,int ,int) ;
 int stub1 (struct net_device*,struct ifreq*,struct hdlcdrv_ioctl*,int) ;
 int stub2 (struct net_device*,struct ifreq*,struct hdlcdrv_ioctl*,int) ;

__attribute__((used)) static int hdlcdrv_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 struct hdlcdrv_state *s = netdev_priv(dev);
 struct hdlcdrv_ioctl bi;

 if (cmd != SIOCDEVPRIVATE) {
  if (s->ops && s->ops->ioctl)
   return s->ops->ioctl(dev, ifr, &bi, cmd);
  return -ENOIOCTLCMD;
 }
 if (copy_from_user(&bi, ifr->ifr_data, sizeof(bi)))
  return -EFAULT;

 switch (bi.cmd) {
 default:
  if (s->ops && s->ops->ioctl)
   return s->ops->ioctl(dev, ifr, &bi, cmd);
  return -ENOIOCTLCMD;

 case 134:
  bi.data.cp.tx_delay = s->ch_params.tx_delay;
  bi.data.cp.tx_tail = s->ch_params.tx_tail;
  bi.data.cp.slottime = s->ch_params.slottime;
  bi.data.cp.ppersist = s->ch_params.ppersist;
  bi.data.cp.fulldup = s->ch_params.fulldup;
  break;

 case 129:
  if (!capable(CAP_NET_ADMIN))
   return -EACCES;
  s->ch_params.tx_delay = bi.data.cp.tx_delay;
  s->ch_params.tx_tail = bi.data.cp.tx_tail;
  s->ch_params.slottime = bi.data.cp.slottime;
  s->ch_params.ppersist = bi.data.cp.ppersist;
  s->ch_params.fulldup = bi.data.cp.fulldup;
  s->hdlctx.slotcnt = 1;
  return 0;

 case 133:
  bi.data.mp.iobase = dev->base_addr;
  bi.data.mp.irq = dev->irq;
  bi.data.mp.dma = dev->dma;
  bi.data.mp.dma2 = s->ptt_out.dma2;
  bi.data.mp.seriobase = s->ptt_out.seriobase;
  bi.data.mp.pariobase = s->ptt_out.pariobase;
  bi.data.mp.midiiobase = s->ptt_out.midiiobase;
  break;

 case 128:
  if ((!capable(CAP_SYS_RAWIO)) || netif_running(dev))
   return -EACCES;
  dev->base_addr = bi.data.mp.iobase;
  dev->irq = bi.data.mp.irq;
  dev->dma = bi.data.mp.dma;
  s->ptt_out.dma2 = bi.data.mp.dma2;
  s->ptt_out.seriobase = bi.data.mp.seriobase;
  s->ptt_out.pariobase = bi.data.mp.pariobase;
  s->ptt_out.midiiobase = bi.data.mp.midiiobase;
  return 0;

 case 131:
  bi.data.cs.ptt = hdlcdrv_ptt(s);
  bi.data.cs.dcd = s->hdlcrx.dcd;
  bi.data.cs.ptt_keyed = s->ptt_keyed;
  bi.data.cs.tx_packets = dev->stats.tx_packets;
  bi.data.cs.tx_errors = dev->stats.tx_errors;
  bi.data.cs.rx_packets = dev->stats.rx_packets;
  bi.data.cs.rx_errors = dev->stats.rx_errors;
  break;

 case 130:
  bi.data.ocs.ptt = hdlcdrv_ptt(s);
  bi.data.ocs.dcd = s->hdlcrx.dcd;
  bi.data.ocs.ptt_keyed = s->ptt_keyed;
  break;

 case 137:
  if(!capable(CAP_SYS_RAWIO))
   return -EPERM;
  if (s->par.bitrate <= 0)
   return -EINVAL;
  if (bi.data.calibrate > INT_MAX / s->par.bitrate)
   return -EINVAL;
  s->hdlctx.calibrate = bi.data.calibrate * s->par.bitrate / 16;
  return 0;

 case 132:

  return -EPERM;
 case 135:

  return -EPERM;
 case 136:
  if (s->ops && s->ops->drvname) {
   strncpy(bi.data.drivername, s->ops->drvname,
    sizeof(bi.data.drivername));
   break;
  }
  bi.data.drivername[0] = '\0';
  break;

 }
 if (copy_to_user(ifr->ifr_data, &bi, sizeof(bi)))
  return -EFAULT;
 return 0;

}
