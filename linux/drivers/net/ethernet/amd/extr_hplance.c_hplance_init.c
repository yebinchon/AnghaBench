
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {unsigned long base_addr; int* dev_addr; scalar_t__ dma; int * netdev_ops; } ;
struct lance_init_block {int dummy; } ;
struct TYPE_4__ {unsigned long base; int tx_ring_mod_mask; int rx_ring_mod_mask; int lance_log_tx_bufs; int lance_log_rx_bufs; int readrdp; int writerdp; int writerap; int irq; int busmaster_regval; int * lance_init_block; struct lance_init_block* init_block; int name; } ;
struct hplance_private {TYPE_2__ lance; } ;
struct TYPE_3__ {unsigned long start; } ;
struct dio_dev {int ipl; int name; TYPE_1__ resource; } ;


 scalar_t__ DIO_IDOFF ;
 unsigned long DIO_VIRADDRBASE ;
 scalar_t__ HPLANCE_MEMOFF ;
 scalar_t__ HPLANCE_NVRAMOFF ;
 int LANCE_LOG_RX_BUFFERS ;
 int LANCE_LOG_TX_BUFFERS ;
 int LE_C3_BSWP ;
 int RX_RING_MOD_MASK ;
 int TX_RING_MOD_MASK ;
 int hplance_netdev_ops ;
 int hplance_readrdp ;
 int hplance_writerap ;
 int hplance_writerdp ;
 int in_8 (scalar_t__) ;
 struct hplance_private* netdev_priv (struct net_device*) ;
 int out_8 (scalar_t__,int) ;
 int udelay (int) ;

__attribute__((used)) static void hplance_init(struct net_device *dev, struct dio_dev *d)
{
 unsigned long va = (d->resource.start + DIO_VIRADDRBASE);
 struct hplance_private *lp;
 int i;


 out_8(va + DIO_IDOFF, 0xff);
 udelay(100);


 dev->base_addr = va;
 dev->netdev_ops = &hplance_netdev_ops;
 dev->dma = 0;

 for (i = 0; i < 6; i++) {



  dev->dev_addr[i] = ((in_8(va + HPLANCE_NVRAMOFF + i*4 + 1) & 0xF) << 4)
   | (in_8(va + HPLANCE_NVRAMOFF + i*4 + 3) & 0xF);
 }

 lp = netdev_priv(dev);
 lp->lance.name = d->name;
 lp->lance.base = va;
 lp->lance.init_block = (struct lance_init_block *)(va + HPLANCE_MEMOFF);
 lp->lance.lance_init_block = ((void*)0);
 lp->lance.busmaster_regval = LE_C3_BSWP;
 lp->lance.irq = d->ipl;
 lp->lance.writerap = hplance_writerap;
 lp->lance.writerdp = hplance_writerdp;
 lp->lance.readrdp = hplance_readrdp;
 lp->lance.lance_log_rx_bufs = LANCE_LOG_RX_BUFFERS;
 lp->lance.lance_log_tx_bufs = LANCE_LOG_TX_BUFFERS;
 lp->lance.rx_ring_mod_mask = RX_RING_MOD_MASK;
 lp->lance.tx_ring_mod_mask = TX_RING_MOD_MASK;
}
