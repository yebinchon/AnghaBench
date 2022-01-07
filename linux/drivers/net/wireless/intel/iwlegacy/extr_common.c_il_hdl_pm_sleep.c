
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct il_sleep_notification {int pm_wakeup_src; int pm_sleep_mode; } ;
struct TYPE_2__ {struct il_sleep_notification sleep_notif; } ;
struct il_rx_pkt {TYPE_1__ u; } ;
struct il_rx_buf {int dummy; } ;
struct il_priv {int dummy; } ;


 int D_RX (char*,int ,int ) ;
 struct il_rx_pkt* rxb_addr (struct il_rx_buf*) ;

void
il_hdl_pm_sleep(struct il_priv *il, struct il_rx_buf *rxb)
{






}
