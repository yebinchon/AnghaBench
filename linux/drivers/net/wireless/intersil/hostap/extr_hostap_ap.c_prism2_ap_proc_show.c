
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ssid_len; int* ssid; int channel; } ;
struct TYPE_4__ {TYPE_1__ ap; } ;
struct sta_info {int capability; TYPE_2__ u; int last_rx_rate; int last_rx_silence; int last_rx_signal; int addr; int ap; } ;
struct seq_file {int dummy; } ;


 void* SEQ_START_TOKEN ;
 int WLAN_CAPABILITY_ESS ;
 int WLAN_CAPABILITY_IBSS ;
 int WLAN_CAPABILITY_PRIVACY ;
 int seq_printf (struct seq_file*,char*,...) ;
 int seq_putc (struct seq_file*,char) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int prism2_ap_proc_show(struct seq_file *m, void *v)
{
 struct sta_info *sta = v;
 int i;

 if (v == SEQ_START_TOKEN) {
  seq_printf(m, "# BSSID CHAN SIGNAL NOISE RATE SSID FLAGS\n");
  return 0;
 }

 if (!sta->ap)
  return 0;

 seq_printf(m, "%pM %d %d %d %d '",
     sta->addr,
     sta->u.ap.channel, sta->last_rx_signal,
     sta->last_rx_silence, sta->last_rx_rate);

 for (i = 0; i < sta->u.ap.ssid_len; i++) {
  if (sta->u.ap.ssid[i] >= 32 && sta->u.ap.ssid[i] < 127)
   seq_putc(m, sta->u.ap.ssid[i]);
  else
   seq_printf(m, "<%02x>", sta->u.ap.ssid[i]);
 }

 seq_putc(m, '\'');
 if (sta->capability & WLAN_CAPABILITY_ESS)
  seq_puts(m, " [ESS]");
 if (sta->capability & WLAN_CAPABILITY_IBSS)
  seq_puts(m, " [IBSS]");
 if (sta->capability & WLAN_CAPABILITY_PRIVACY)
  seq_puts(m, " [WEP]");
 seq_putc(m, '\n');
 return 0;
}
