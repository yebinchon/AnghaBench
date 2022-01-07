
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int rx_errors; int rx_frame_errors; int rx_fifo_errors; int rx_crc_errors; int rx_length_errors; } ;
struct net_device {TYPE_1__ stats; } ;


 int RX_ALIGNMENT_ERROR ;
 int RX_FCS_ERR ;
 int RX_FIFO_OVERRUN ;
 int RX_LENGTH_ERR ;

__attribute__((used)) static void nb8800_rx_error(struct net_device *dev, u32 report)
{
 if (report & RX_LENGTH_ERR)
  dev->stats.rx_length_errors++;

 if (report & RX_FCS_ERR)
  dev->stats.rx_crc_errors++;

 if (report & RX_FIFO_OVERRUN)
  dev->stats.rx_fifo_errors++;

 if (report & RX_ALIGNMENT_ERROR)
  dev->stats.rx_frame_errors++;

 dev->stats.rx_errors++;
}
