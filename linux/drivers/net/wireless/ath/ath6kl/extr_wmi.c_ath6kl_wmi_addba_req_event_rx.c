
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmi_addba_req_event {int win_sz; int st_seq_no; int tid; } ;
struct wmi {int dummy; } ;
struct ath6kl_vif {int dummy; } ;


 int aggr_recv_addba_req_evt (struct ath6kl_vif*,int ,int ,int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int ath6kl_wmi_addba_req_event_rx(struct wmi *wmi, u8 *datap, int len,
      struct ath6kl_vif *vif)
{
 struct wmi_addba_req_event *cmd = (struct wmi_addba_req_event *) datap;

 aggr_recv_addba_req_evt(vif, cmd->tid,
    le16_to_cpu(cmd->st_seq_no), cmd->win_sz);

 return 0;
}
