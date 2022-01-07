
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmi_delba_event {int tid; } ;
struct wmi {int dummy; } ;
struct ath6kl_vif {int dummy; } ;


 int aggr_recv_delba_req_evt (struct ath6kl_vif*,int ) ;

__attribute__((used)) static int ath6kl_wmi_delba_req_event_rx(struct wmi *wmi, u8 *datap, int len,
      struct ath6kl_vif *vif)
{
 struct wmi_delba_event *cmd = (struct wmi_delba_event *) datap;

 aggr_recv_delba_req_evt(vif, cmd->tid);

 return 0;
}
