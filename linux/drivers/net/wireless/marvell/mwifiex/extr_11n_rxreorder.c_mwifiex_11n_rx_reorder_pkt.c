
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct TYPE_2__ {int timer_is_set; } ;
struct mwifiex_rx_reorder_tbl {int start_win; int win_size; int flags; int init_win; TYPE_1__ timer_context; void** rx_reorder_ptr; int amsdu; } ;
struct mwifiex_private {int adapter; } ;


 int INFO ;
 int MAX_TID_VALUE ;
 scalar_t__ PKT_TYPE_AMSDU ;
 scalar_t__ PKT_TYPE_BAR ;
 int RXREOR_FORCE_NO_DROP ;
 int RXREOR_INIT_WINDOW_SHIFT ;
 int TWOPOW11 ;
 int mwifiex_11n_dispatch_pkt (struct mwifiex_private*,void*) ;
 int mwifiex_11n_dispatch_pkt_until_start_win (struct mwifiex_private*,struct mwifiex_rx_reorder_tbl*,int) ;
 struct mwifiex_rx_reorder_tbl* mwifiex_11n_get_rx_reorder_tbl (struct mwifiex_private*,int,scalar_t__*) ;
 int mwifiex_11n_rxreorder_timer_restart (struct mwifiex_rx_reorder_tbl*) ;
 int mwifiex_11n_scan_and_dispatch (struct mwifiex_private*,struct mwifiex_rx_reorder_tbl*) ;
 int mwifiex_dbg (int ,int ,char*,...) ;

int mwifiex_11n_rx_reorder_pkt(struct mwifiex_private *priv,
    u16 seq_num, u16 tid,
    u8 *ta, u8 pkt_type, void *payload)
{
 struct mwifiex_rx_reorder_tbl *tbl;
 int prev_start_win, start_win, end_win, win_size;
 u16 pkt_index;
 bool init_window_shift = 0;
 int ret = 0;

 tbl = mwifiex_11n_get_rx_reorder_tbl(priv, tid, ta);
 if (!tbl) {
  if (pkt_type != PKT_TYPE_BAR)
   mwifiex_11n_dispatch_pkt(priv, payload);
  return ret;
 }

 if ((pkt_type == PKT_TYPE_AMSDU) && !tbl->amsdu) {
  mwifiex_11n_dispatch_pkt(priv, payload);
  return ret;
 }

 start_win = tbl->start_win;
 prev_start_win = start_win;
 win_size = tbl->win_size;
 end_win = ((start_win + win_size) - 1) & (MAX_TID_VALUE - 1);
 if (tbl->flags & RXREOR_INIT_WINDOW_SHIFT) {
  init_window_shift = 1;
  tbl->flags &= ~RXREOR_INIT_WINDOW_SHIFT;
 }

 if (tbl->flags & RXREOR_FORCE_NO_DROP) {
  mwifiex_dbg(priv->adapter, INFO,
       "RXREOR_FORCE_NO_DROP when HS is activated\n");
  tbl->flags &= ~RXREOR_FORCE_NO_DROP;
 } else if (init_window_shift && seq_num < start_win &&
     seq_num >= tbl->init_win) {
  mwifiex_dbg(priv->adapter, INFO,
       "Sender TID sequence number reset %d->%d for SSN %d\n",
       start_win, seq_num, tbl->init_win);
  tbl->start_win = start_win = seq_num;
  end_win = ((start_win + win_size) - 1) & (MAX_TID_VALUE - 1);
 } else {




  if ((start_win + TWOPOW11) > (MAX_TID_VALUE - 1)) {
   if (seq_num >= ((start_win + TWOPOW11) &
     (MAX_TID_VALUE - 1)) &&
       seq_num < start_win) {
    ret = -1;
    goto done;
   }
  } else if ((seq_num < start_win) ||
      (seq_num >= (start_win + TWOPOW11))) {
   ret = -1;
   goto done;
  }
 }





 if (pkt_type == PKT_TYPE_BAR)
  seq_num = ((seq_num + win_size) - 1) & (MAX_TID_VALUE - 1);

 if (((end_win < start_win) &&
      (seq_num < start_win) && (seq_num > end_win)) ||
     ((end_win > start_win) && ((seq_num > end_win) ||
           (seq_num < start_win)))) {
  end_win = seq_num;
  if (((end_win - win_size) + 1) >= 0)
   start_win = (end_win - win_size) + 1;
  else
   start_win = (MAX_TID_VALUE - (win_size - end_win)) + 1;
  mwifiex_11n_dispatch_pkt_until_start_win(priv, tbl, start_win);
 }

 if (pkt_type != PKT_TYPE_BAR) {
  if (seq_num >= start_win)
   pkt_index = seq_num - start_win;
  else
   pkt_index = (seq_num+MAX_TID_VALUE) - start_win;

  if (tbl->rx_reorder_ptr[pkt_index]) {
   ret = -1;
   goto done;
  }

  tbl->rx_reorder_ptr[pkt_index] = payload;
 }





 mwifiex_11n_scan_and_dispatch(priv, tbl);

done:
 if (!tbl->timer_context.timer_is_set ||
     prev_start_win != tbl->start_win)
  mwifiex_11n_rxreorder_timer_restart(tbl);
 return ret;
}
