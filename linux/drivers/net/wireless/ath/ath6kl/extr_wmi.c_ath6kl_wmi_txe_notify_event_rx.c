
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct wmi_txe_notify_event {int pkts; int rate; } ;
struct wmi {int dummy; } ;
struct ath6kl_vif {scalar_t__ nw_type; scalar_t__ sme_state; int txe_intvl; int bssid; int ndev; TYPE_1__* ar; } ;
struct TYPE_2__ {int fw_capabilities; } ;


 int ATH6KL_DBG_WMI ;
 int ATH6KL_FW_CAPABILITY_TX_ERR_NOTIFY ;
 int EINVAL ;
 int ENOTCONN ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 scalar_t__ INFRA_NETWORK ;
 scalar_t__ SME_CONNECTED ;
 int ath6kl_dbg (int ,char*,int ,int ,int ,int ) ;
 int cfg80211_cqm_txe_notify (int ,int ,int ,int ,int ,int ) ;
 int le32_to_cpu (int ) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static int ath6kl_wmi_txe_notify_event_rx(struct wmi *wmi, u8 *datap, int len,
       struct ath6kl_vif *vif)
{
 struct wmi_txe_notify_event *ev;
 u32 rate, pkts;

 if (len < sizeof(*ev))
  return -EINVAL;

 if (vif->nw_type != INFRA_NETWORK ||
     !test_bit(ATH6KL_FW_CAPABILITY_TX_ERR_NOTIFY,
        vif->ar->fw_capabilities))
  return -EOPNOTSUPP;

 if (vif->sme_state != SME_CONNECTED)
  return -ENOTCONN;

 ev = (struct wmi_txe_notify_event *) datap;
 rate = le32_to_cpu(ev->rate);
 pkts = le32_to_cpu(ev->pkts);

 ath6kl_dbg(ATH6KL_DBG_WMI, "TXE notify event: peer %pM rate %d%% pkts %d intvl %ds\n",
     vif->bssid, rate, pkts, vif->txe_intvl);

 cfg80211_cqm_txe_notify(vif->ndev, vif->bssid, pkts,
    rate, vif->txe_intvl, GFP_KERNEL);

 return 0;
}
