
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct reorder_tmr_cnxt {int timer_is_set; TYPE_2__* ptr; TYPE_1__* priv; } ;
struct TYPE_4__ {int start_win; } ;
struct TYPE_3__ {int adapter; } ;


 int INFO ;
 int MAX_TID_VALUE ;
 struct reorder_tmr_cnxt* ctx ;
 struct reorder_tmr_cnxt* from_timer (int ,struct timer_list*,int ) ;
 int mwifiex_11n_dispatch_pkt_until_start_win (TYPE_1__*,TYPE_2__*,int) ;
 int mwifiex_11n_find_last_seq_num (struct reorder_tmr_cnxt*) ;
 int mwifiex_dbg (int ,int ,char*,int) ;
 int timer ;

__attribute__((used)) static void
mwifiex_flush_data(struct timer_list *t)
{
 struct reorder_tmr_cnxt *ctx =
  from_timer(ctx, t, timer);
 int start_win, seq_num;

 ctx->timer_is_set = 0;
 seq_num = mwifiex_11n_find_last_seq_num(ctx);

 if (seq_num < 0)
  return;

 mwifiex_dbg(ctx->priv->adapter, INFO, "info: flush data %d\n", seq_num);
 start_win = (ctx->ptr->start_win + seq_num + 1) & (MAX_TID_VALUE - 1);
 mwifiex_11n_dispatch_pkt_until_start_win(ctx->priv, ctx->ptr,
       start_win);
}
