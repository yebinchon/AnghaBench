
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rx_packet {int dummy; } ;
struct iwl_notif_wait_data {int dummy; } ;


 int iwl_notification_notify (struct iwl_notif_wait_data*) ;
 scalar_t__ iwl_notification_wait (struct iwl_notif_wait_data*,struct iwl_rx_packet*) ;

__attribute__((used)) static inline void
iwl_notification_wait_notify(struct iwl_notif_wait_data *notif_data,
        struct iwl_rx_packet *pkt)
{
 if (iwl_notification_wait(notif_data, pkt))
  iwl_notification_notify(notif_data);
}
