
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lan78xx_statstage {int dummy; } ;
struct TYPE_2__ {int saved; } ;
struct lan78xx_net {TYPE_1__ stats; } ;


 int check_counter_rollover (struct lan78xx_statstage*,TYPE_1__,int ) ;
 int eee_rx_lpi_time ;
 int eee_rx_lpi_transitions ;
 int eee_tx_lpi_time ;
 int eee_tx_lpi_transitions ;
 int memcpy (int *,struct lan78xx_statstage*,int) ;
 int rx_1024_1518_byte_frames ;
 int rx_128_255_byte_frames ;
 int rx_256_511_bytes_frames ;
 int rx_512_1023_byte_frames ;
 int rx_64_byte_frames ;
 int rx_65_127_byte_frames ;
 int rx_alignment_errors ;
 int rx_broadcast_byte_count ;
 int rx_broadcast_frames ;
 int rx_dropped_frames ;
 int rx_fcs_errors ;
 int rx_fragment_errors ;
 int rx_greater_1518_byte_frames ;
 int rx_jabber_errors ;
 int rx_multicast_byte_count ;
 int rx_multicast_frames ;
 int rx_oversize_frame_errors ;
 int rx_pause_frames ;
 int rx_undersize_frame_errors ;
 int rx_unicast_byte_count ;
 int rx_unicast_frames ;
 int tx_1024_1518_byte_frames ;
 int tx_128_255_byte_frames ;
 int tx_256_511_bytes_frames ;
 int tx_512_1023_byte_frames ;
 int tx_64_byte_frames ;
 int tx_65_127_byte_frames ;
 int tx_bad_byte_count ;
 int tx_broadcast_byte_count ;
 int tx_broadcast_frames ;
 int tx_carrier_errors ;
 int tx_excess_deferral_errors ;
 int tx_excessive_collision ;
 int tx_fcs_errors ;
 int tx_greater_1518_byte_frames ;
 int tx_late_collisions ;
 int tx_multicast_byte_count ;
 int tx_multicast_frames ;
 int tx_multiple_collisions ;
 int tx_pause_frames ;
 int tx_single_collisions ;
 int tx_unicast_byte_count ;
 int tx_unicast_frames ;

__attribute__((used)) static void lan78xx_check_stat_rollover(struct lan78xx_net *dev,
     struct lan78xx_statstage *stats)
{
 check_counter_rollover(stats, dev->stats, rx_fcs_errors);
 check_counter_rollover(stats, dev->stats, rx_alignment_errors);
 check_counter_rollover(stats, dev->stats, rx_fragment_errors);
 check_counter_rollover(stats, dev->stats, rx_jabber_errors);
 check_counter_rollover(stats, dev->stats, rx_undersize_frame_errors);
 check_counter_rollover(stats, dev->stats, rx_oversize_frame_errors);
 check_counter_rollover(stats, dev->stats, rx_dropped_frames);
 check_counter_rollover(stats, dev->stats, rx_unicast_byte_count);
 check_counter_rollover(stats, dev->stats, rx_broadcast_byte_count);
 check_counter_rollover(stats, dev->stats, rx_multicast_byte_count);
 check_counter_rollover(stats, dev->stats, rx_unicast_frames);
 check_counter_rollover(stats, dev->stats, rx_broadcast_frames);
 check_counter_rollover(stats, dev->stats, rx_multicast_frames);
 check_counter_rollover(stats, dev->stats, rx_pause_frames);
 check_counter_rollover(stats, dev->stats, rx_64_byte_frames);
 check_counter_rollover(stats, dev->stats, rx_65_127_byte_frames);
 check_counter_rollover(stats, dev->stats, rx_128_255_byte_frames);
 check_counter_rollover(stats, dev->stats, rx_256_511_bytes_frames);
 check_counter_rollover(stats, dev->stats, rx_512_1023_byte_frames);
 check_counter_rollover(stats, dev->stats, rx_1024_1518_byte_frames);
 check_counter_rollover(stats, dev->stats, rx_greater_1518_byte_frames);
 check_counter_rollover(stats, dev->stats, eee_rx_lpi_transitions);
 check_counter_rollover(stats, dev->stats, eee_rx_lpi_time);
 check_counter_rollover(stats, dev->stats, tx_fcs_errors);
 check_counter_rollover(stats, dev->stats, tx_excess_deferral_errors);
 check_counter_rollover(stats, dev->stats, tx_carrier_errors);
 check_counter_rollover(stats, dev->stats, tx_bad_byte_count);
 check_counter_rollover(stats, dev->stats, tx_single_collisions);
 check_counter_rollover(stats, dev->stats, tx_multiple_collisions);
 check_counter_rollover(stats, dev->stats, tx_excessive_collision);
 check_counter_rollover(stats, dev->stats, tx_late_collisions);
 check_counter_rollover(stats, dev->stats, tx_unicast_byte_count);
 check_counter_rollover(stats, dev->stats, tx_broadcast_byte_count);
 check_counter_rollover(stats, dev->stats, tx_multicast_byte_count);
 check_counter_rollover(stats, dev->stats, tx_unicast_frames);
 check_counter_rollover(stats, dev->stats, tx_broadcast_frames);
 check_counter_rollover(stats, dev->stats, tx_multicast_frames);
 check_counter_rollover(stats, dev->stats, tx_pause_frames);
 check_counter_rollover(stats, dev->stats, tx_64_byte_frames);
 check_counter_rollover(stats, dev->stats, tx_65_127_byte_frames);
 check_counter_rollover(stats, dev->stats, tx_128_255_byte_frames);
 check_counter_rollover(stats, dev->stats, tx_256_511_bytes_frames);
 check_counter_rollover(stats, dev->stats, tx_512_1023_byte_frames);
 check_counter_rollover(stats, dev->stats, tx_1024_1518_byte_frames);
 check_counter_rollover(stats, dev->stats, tx_greater_1518_byte_frames);
 check_counter_rollover(stats, dev->stats, eee_tx_lpi_transitions);
 check_counter_rollover(stats, dev->stats, eee_tx_lpi_time);

 memcpy(&dev->stats.saved, stats, sizeof(struct lan78xx_statstage));
}
