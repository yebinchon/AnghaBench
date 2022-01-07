
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cmd; } ;
struct iwl_rx_packet {TYPE_1__ hdr; } ;
struct iwl_notif_wait_data {int dummy; } ;


 scalar_t__ INIT_COMPLETE_NOTIF ;
 int WARN_ON (int) ;

__attribute__((used)) static bool iwl_wait_init_complete(struct iwl_notif_wait_data *notif_wait,
       struct iwl_rx_packet *pkt, void *data)
{
 WARN_ON(pkt->hdr.cmd != INIT_COMPLETE_NOTIF);

 return 1;
}
