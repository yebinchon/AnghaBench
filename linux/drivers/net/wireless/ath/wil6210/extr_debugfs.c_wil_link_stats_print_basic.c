
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_link_stats_basic {int per_average; int other_tx_sector; int other_rx_sector; int my_tx_sector; int my_rx_sector; int rx_effective_ant_num; int selected_rfc; int snr; int sqi; int rssi; int rx_bcast_frames; int tx_goodput; int rx_goodput; int tx_tpt; int bf_mcs; int cid; } ;
struct wil6210_vif {int dummy; } ;
struct seq_file {int dummy; } ;
typedef int per ;


 int le32_to_cpu (int ) ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,char*,int ,int ,int ,int ,int ,int ) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void wil_link_stats_print_basic(struct wil6210_vif *vif,
           struct seq_file *s,
           struct wmi_link_stats_basic *basic)
{
 char per[5] = "?";

 if (basic->per_average != 0xff)
  snprintf(per, sizeof(per), "%d%%", basic->per_average);

 seq_printf(s, "CID %d {\n"
     "\tTxMCS %d TxTpt %d\n"
     "\tGoodput(rx:tx) %d:%d\n"
     "\tRxBcastFrames %d\n"
     "\tRSSI %d SQI %d SNR %d PER %s\n"
     "\tRx RFC %d Ant num %d\n"
     "\tSectors(rx:tx) my %d:%d peer %d:%d\n"
     "}\n",
     basic->cid,
     basic->bf_mcs, le32_to_cpu(basic->tx_tpt),
     le32_to_cpu(basic->rx_goodput),
     le32_to_cpu(basic->tx_goodput),
     le32_to_cpu(basic->rx_bcast_frames),
     basic->rssi, basic->sqi, basic->snr, per,
     basic->selected_rfc, basic->rx_effective_ant_num,
     basic->my_rx_sector, basic->my_tx_sector,
     basic->other_rx_sector, basic->other_tx_sector);
}
