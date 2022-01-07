
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_link_stats_global {int tx_fail_no_ack; int rx_crc_errors; int rx_mic_errors; int tx_beacons; int tx_ba_frames; int rx_ba_frames; int tx_frames; int rx_frames; } ;
struct wil6210_priv {int dummy; } ;
struct seq_file {int dummy; } ;


 int le32_to_cpu (int ) ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void wil_link_stats_print_global(struct wil6210_priv *wil,
     struct seq_file *s,
     struct wmi_link_stats_global *global)
{
 seq_printf(s, "Frames(rx:tx) %d:%d\n"
     "BA Frames(rx:tx) %d:%d\n"
     "Beacons %d\n"
     "Rx Errors (MIC:CRC) %d:%d\n"
     "Tx Errors (no ack) %d\n",
     le32_to_cpu(global->rx_frames),
     le32_to_cpu(global->tx_frames),
     le32_to_cpu(global->rx_ba_frames),
     le32_to_cpu(global->tx_ba_frames),
     le32_to_cpu(global->tx_beacons),
     le32_to_cpu(global->rx_mic_errors),
     le32_to_cpu(global->rx_crc_errors),
     le32_to_cpu(global->tx_fail_no_ack));
}
