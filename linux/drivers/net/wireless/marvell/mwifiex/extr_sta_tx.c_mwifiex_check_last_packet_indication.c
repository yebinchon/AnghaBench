
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mwifiex_private {struct mwifiex_adapter* adapter; } ;
struct TYPE_2__ {int period; } ;
struct mwifiex_adapter {int delay_null_pkt; int curr_cmd; int cmd_sent; TYPE_1__ sleep_period; } ;


 int is_command_pending (struct mwifiex_adapter*) ;
 scalar_t__ mwifiex_wmm_lists_empty (struct mwifiex_adapter*) ;

u8
mwifiex_check_last_packet_indication(struct mwifiex_private *priv)
{
 struct mwifiex_adapter *adapter = priv->adapter;
 u8 ret = 0;

 if (!adapter->sleep_period.period)
  return ret;
 if (mwifiex_wmm_lists_empty(adapter))
   ret = 1;

 if (ret && !adapter->cmd_sent && !adapter->curr_cmd &&
     !is_command_pending(adapter)) {
  adapter->delay_null_pkt = 0;
  ret = 1;
 } else {
  ret = 0;
  adapter->delay_null_pkt = 1;
 }
 return ret;
}
