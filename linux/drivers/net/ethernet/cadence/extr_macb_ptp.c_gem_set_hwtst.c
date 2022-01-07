
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct hwtstamp_config {int tx_type; int rx_filter; scalar_t__ flags; } ;
struct macb {int hw_dma_cap; struct hwtstamp_config tstamp_config; } ;
struct ifreq {int ifr_data; } ;
typedef enum macb_bd_control { ____Placeholder_macb_bd_control } macb_bd_control ;


 int EFAULT ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int ERANGE ;
 int HW_DMA_CAP_PTP ;
 int MACB_BIT (int ) ;
 int NCR ;
 int SRTSM ;
 int TSTAMP_ALL_FRAMES ;
 int TSTAMP_ALL_PTP_FRAMES ;
 int TSTAMP_DISABLED ;
 scalar_t__ copy_from_user (struct hwtstamp_config*,int ,int) ;
 scalar_t__ copy_to_user (int ,struct hwtstamp_config*,int) ;
 int gem_ptp_set_one_step_sync (struct macb*,int) ;
 scalar_t__ gem_ptp_set_ts_mode (struct macb*,int,int) ;
 int macb_readl (struct macb*,int ) ;
 int macb_writel (struct macb*,int ,int) ;
 struct macb* netdev_priv (struct net_device*) ;

int gem_set_hwtst(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 enum macb_bd_control tx_bd_control = TSTAMP_DISABLED;
 enum macb_bd_control rx_bd_control = TSTAMP_DISABLED;
 struct hwtstamp_config *tstamp_config;
 struct macb *bp = netdev_priv(dev);
 u32 regval;

 tstamp_config = &bp->tstamp_config;
 if ((bp->hw_dma_cap & HW_DMA_CAP_PTP) == 0)
  return -EOPNOTSUPP;

 if (copy_from_user(tstamp_config, ifr->ifr_data,
      sizeof(*tstamp_config)))
  return -EFAULT;


 if (tstamp_config->flags)
  return -EINVAL;

 switch (tstamp_config->tx_type) {
 case 130:
  break;
 case 128:
  if (gem_ptp_set_one_step_sync(bp, 1) != 0)
   return -ERANGE;

 case 129:
  tx_bd_control = TSTAMP_ALL_FRAMES;
  break;
 default:
  return -ERANGE;
 }

 switch (tstamp_config->rx_filter) {
 case 143:
  break;
 case 140:
  break;
 case 142:
  break;
 case 138:
 case 136:
 case 133:
 case 131:
 case 135:
 case 132:
 case 139:
 case 137:
 case 134:
  rx_bd_control = TSTAMP_ALL_PTP_FRAMES;
  tstamp_config->rx_filter = 138;
  regval = macb_readl(bp, NCR);
  macb_writel(bp, NCR, (regval | MACB_BIT(SRTSM)));
  break;
 case 141:
 case 144:
  rx_bd_control = TSTAMP_ALL_FRAMES;
  tstamp_config->rx_filter = 144;
  break;
 default:
  tstamp_config->rx_filter = 143;
  return -ERANGE;
 }

 if (gem_ptp_set_ts_mode(bp, tx_bd_control, rx_bd_control) != 0)
  return -ERANGE;

 if (copy_to_user(ifr->ifr_data, tstamp_config, sizeof(*tstamp_config)))
  return -EFAULT;
 else
  return 0;
}
