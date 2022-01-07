
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct cas {int * stat_lock; TYPE_1__* net_stats; int dev; scalar_t__ regs; } ;
struct TYPE_2__ {int rx_frame_errors; int rx_crc_errors; int rx_length_errors; int rx_fifo_errors; int rx_over_errors; } ;


 int MAC_RX_ALIGN_ERR ;
 int MAC_RX_CRC_ERR ;
 int MAC_RX_LEN_ERR ;
 int MAC_RX_OVERFLOW ;
 scalar_t__ REG_MAC_RX_STATUS ;
 int intr ;
 int netif_dbg (struct cas*,int ,int ,char*,int) ;
 int readl (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int cas_rxmac_interrupt(struct net_device *dev, struct cas *cp,
          u32 status)
{
 u32 stat = readl(cp->regs + REG_MAC_RX_STATUS);

 if (!stat)
  return 0;

 netif_dbg(cp, intr, cp->dev, "rxmac interrupt, stat: 0x%x\n", stat);


 spin_lock(&cp->stat_lock[0]);
 if (stat & MAC_RX_ALIGN_ERR)
  cp->net_stats[0].rx_frame_errors += 0x10000;

 if (stat & MAC_RX_CRC_ERR)
  cp->net_stats[0].rx_crc_errors += 0x10000;

 if (stat & MAC_RX_LEN_ERR)
  cp->net_stats[0].rx_length_errors += 0x10000;

 if (stat & MAC_RX_OVERFLOW) {
  cp->net_stats[0].rx_over_errors++;
  cp->net_stats[0].rx_fifo_errors++;
 }




 spin_unlock(&cp->stat_lock[0]);
 return 0;
}
