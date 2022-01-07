
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int rx_frame_errors; int rx_crc_errors; int rx_length_errors; int rx_errors; } ;
struct net_device {TYPE_1__ stats; } ;


 int RXSR_CRC_ERROR ;
 int RXSR_RUNT ;
 int RXSR_TOO_LONG ;
 int netdev_dbg (struct net_device*,char*,int) ;

__attribute__((used)) static void ks8842_update_rx_err_counters(struct net_device *netdev, u32 status)
{
 netdev_dbg(netdev, "RX error, status: %x\n", status);

 netdev->stats.rx_errors++;
 if (status & RXSR_TOO_LONG)
  netdev->stats.rx_length_errors++;
 if (status & RXSR_CRC_ERROR)
  netdev->stats.rx_crc_errors++;
 if (status & RXSR_RUNT)
  netdev->stats.rx_frame_errors++;
}
