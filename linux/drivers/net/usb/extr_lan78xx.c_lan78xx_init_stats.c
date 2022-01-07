
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int rx_unicast_byte_count; int rx_broadcast_byte_count; int rx_multicast_byte_count; int eee_rx_lpi_transitions; int eee_rx_lpi_time; int tx_unicast_byte_count; int tx_broadcast_byte_count; int tx_multicast_byte_count; int eee_tx_lpi_transitions; int eee_tx_lpi_time; } ;
struct TYPE_4__ {TYPE_1__ rollover_max; } ;
struct lan78xx_net {int flags; TYPE_2__ stats; } ;


 int EVENT_STAT_UPDATE ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void lan78xx_init_stats(struct lan78xx_net *dev)
{
 u32 *p;
 int i;




 p = (u32 *)&dev->stats.rollover_max;
 for (i = 0; i < (sizeof(dev->stats.rollover_max) / (sizeof(u32))); i++)
  p[i] = 0xFFFFF;

 dev->stats.rollover_max.rx_unicast_byte_count = 0xFFFFFFFF;
 dev->stats.rollover_max.rx_broadcast_byte_count = 0xFFFFFFFF;
 dev->stats.rollover_max.rx_multicast_byte_count = 0xFFFFFFFF;
 dev->stats.rollover_max.eee_rx_lpi_transitions = 0xFFFFFFFF;
 dev->stats.rollover_max.eee_rx_lpi_time = 0xFFFFFFFF;
 dev->stats.rollover_max.tx_unicast_byte_count = 0xFFFFFFFF;
 dev->stats.rollover_max.tx_broadcast_byte_count = 0xFFFFFFFF;
 dev->stats.rollover_max.tx_multicast_byte_count = 0xFFFFFFFF;
 dev->stats.rollover_max.eee_tx_lpi_transitions = 0xFFFFFFFF;
 dev->stats.rollover_max.eee_tx_lpi_time = 0xFFFFFFFF;

 set_bit(EVENT_STAT_UPDATE, &dev->flags);
}
