
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_rx_status {int rs_num_delims; int rs_moreaggr; int rs_isaggr; int rs_rssi_ext; int rs_rssi_ctl; int rs_more; int rs_antenna; int rs_rate; int rs_keyix; int rs_rssi; int rs_phyerr; int rs_status; int rs_datalen; } ;
struct ath_htc_rx_status {int rs_num_delims; int rs_moreaggr; int rs_isaggr; int rs_rssi_ext; int rs_rssi_ctl; int rs_more; int rs_antenna; int rs_rate; int rs_keyix; int rs_rssi; int rs_phyerr; int rs_status; int rs_datalen; } ;


 int be16_to_cpu (int ) ;
 int convert_htc_flag (struct ath_rx_status*,struct ath_htc_rx_status*) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void rx_status_htc_to_ath(struct ath_rx_status *rx_stats,
     struct ath_htc_rx_status *rxstatus)
{
 rx_stats->rs_datalen = be16_to_cpu(rxstatus->rs_datalen);
 rx_stats->rs_status = rxstatus->rs_status;
 rx_stats->rs_phyerr = rxstatus->rs_phyerr;
 rx_stats->rs_rssi = rxstatus->rs_rssi;
 rx_stats->rs_keyix = rxstatus->rs_keyix;
 rx_stats->rs_rate = rxstatus->rs_rate;
 rx_stats->rs_antenna = rxstatus->rs_antenna;
 rx_stats->rs_more = rxstatus->rs_more;

 memcpy(rx_stats->rs_rssi_ctl, rxstatus->rs_rssi_ctl,
  sizeof(rx_stats->rs_rssi_ctl));
 memcpy(rx_stats->rs_rssi_ext, rxstatus->rs_rssi_ext,
  sizeof(rx_stats->rs_rssi_ext));

 rx_stats->rs_isaggr = rxstatus->rs_isaggr;
 rx_stats->rs_moreaggr = rxstatus->rs_moreaggr;
 rx_stats->rs_num_delims = rxstatus->rs_num_delims;
 convert_htc_flag(rx_stats, rxstatus);
}
