
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wl3501_scan_req {int probe_delay; int bss_type; int max_chan_time; int min_chan_time; int scan_type; int sig_id; } ;
struct wl3501_card {scalar_t__ join_sta_bss; scalar_t__ bss_cnt; } ;
typedef int sig ;


 int WL3501_SCAN_TYPE_ACTIVE ;
 int WL3501_SIG_SCAN_REQ ;
 int wl3501_esbq_exec (struct wl3501_card*,struct wl3501_scan_req*,int) ;
 int wl3501_fw_bss_type (struct wl3501_card*) ;

__attribute__((used)) static int wl3501_mgmt_scan(struct wl3501_card *this, u16 chan_time)
{
 struct wl3501_scan_req sig = {
  .sig_id = WL3501_SIG_SCAN_REQ,
  .scan_type = WL3501_SCAN_TYPE_ACTIVE,
  .probe_delay = 0x10,
  .min_chan_time = chan_time,
  .max_chan_time = chan_time,
  .bss_type = wl3501_fw_bss_type(this),
 };

 this->bss_cnt = this->join_sta_bss = 0;
 return wl3501_esbq_exec(this, &sig, sizeof(sig));
}
