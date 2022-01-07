
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct timer_list {int dummy; } ;
struct TYPE_4__ {scalar_t__ fill_cnt; scalar_t__ cnt; scalar_t__ watchdog_needed; } ;
struct myri10ge_slice_state {TYPE_2__ rx_big; TYPE_2__ rx_small; TYPE_1__* fw_stats; } ;
struct myri10ge_priv {int num_slices; int watchdog_timer; int watchdog_work; int watchdog_pause; int pdev; scalar_t__ big_bytes; scalar_t__ small_bytes; struct myri10ge_slice_state* ss; } ;
struct TYPE_3__ {int dropped_pause; } ;


 int HZ ;
 scalar_t__ MXGEFW_PAD ;
 int PCI_COMMAND ;
 int PCI_COMMAND_MASTER ;
 struct myri10ge_priv* from_timer (struct myri10ge_priv*,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int myri10ge_alloc_rx_pages (struct myri10ge_priv*,TYPE_2__*,scalar_t__,int) ;
 int myri10ge_check_slice (struct myri10ge_slice_state*,int*,int*,int ) ;
 scalar_t__ myri10ge_fill_thresh ;
 int myri10ge_watchdog_timeout ;
 int ntohl (int ) ;
 int pci_read_config_word (int ,int ,int*) ;
 int schedule_work (int *) ;
 int watchdog_timer ;

__attribute__((used)) static void myri10ge_watchdog_timer(struct timer_list *t)
{
 struct myri10ge_priv *mgp;
 struct myri10ge_slice_state *ss;
 int i, reset_needed, busy_slice_cnt;
 u32 rx_pause_cnt;
 u16 cmd;

 mgp = from_timer(mgp, t, watchdog_timer);

 rx_pause_cnt = ntohl(mgp->ss[0].fw_stats->dropped_pause);
 busy_slice_cnt = 0;
 for (i = 0, reset_needed = 0;
      i < mgp->num_slices && reset_needed == 0; ++i) {

  ss = &mgp->ss[i];
  if (ss->rx_small.watchdog_needed) {
   myri10ge_alloc_rx_pages(mgp, &ss->rx_small,
      mgp->small_bytes + MXGEFW_PAD,
      1);
   if (ss->rx_small.fill_cnt - ss->rx_small.cnt >=
       myri10ge_fill_thresh)
    ss->rx_small.watchdog_needed = 0;
  }
  if (ss->rx_big.watchdog_needed) {
   myri10ge_alloc_rx_pages(mgp, &ss->rx_big,
      mgp->big_bytes, 1);
   if (ss->rx_big.fill_cnt - ss->rx_big.cnt >=
       myri10ge_fill_thresh)
    ss->rx_big.watchdog_needed = 0;
  }
  myri10ge_check_slice(ss, &reset_needed, &busy_slice_cnt,
         rx_pause_cnt);
 }



 if (busy_slice_cnt == 0) {
  pci_read_config_word(mgp->pdev, PCI_COMMAND, &cmd);
  if ((cmd & PCI_COMMAND_MASTER) == 0) {
   reset_needed = 1;
  }
 }
 mgp->watchdog_pause = rx_pause_cnt;

 if (reset_needed) {
  schedule_work(&mgp->watchdog_work);
 } else {

  mod_timer(&mgp->watchdog_timer,
     jiffies + myri10ge_watchdog_timeout * HZ);
 }
}
