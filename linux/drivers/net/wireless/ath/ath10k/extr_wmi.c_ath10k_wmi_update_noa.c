
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wmi_p2p_noa_info {int changed; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int noa_len; scalar_t__ noa_data; } ;
struct TYPE_5__ {TYPE_1__ ap; } ;
struct ath10k_vif {TYPE_2__ u; TYPE_3__* vif; } ;
struct ath10k {int dummy; } ;
struct TYPE_6__ {int p2p; } ;


 int ATH10K_DBG_MGMT ;
 int GFP_ATOMIC ;
 int WMI_P2P_NOA_CHANGED_BIT ;
 int ath10k_dbg (struct ath10k*,int ,char*,int) ;
 int ath10k_p2p_noa_update (struct ath10k_vif*,struct wmi_p2p_noa_info const*) ;
 int pskb_expand_head (struct sk_buff*,int ,int ,int ) ;
 int skb_put_data (struct sk_buff*,scalar_t__,int ) ;

__attribute__((used)) static void ath10k_wmi_update_noa(struct ath10k *ar, struct ath10k_vif *arvif,
      struct sk_buff *bcn,
      const struct wmi_p2p_noa_info *noa)
{
 if (!arvif->vif->p2p)
  return;

 ath10k_dbg(ar, ATH10K_DBG_MGMT, "noa changed: %d\n", noa->changed);

 if (noa->changed & WMI_P2P_NOA_CHANGED_BIT)
  ath10k_p2p_noa_update(arvif, noa);

 if (arvif->u.ap.noa_data)
  if (!pskb_expand_head(bcn, 0, arvif->u.ap.noa_len, GFP_ATOMIC))
   skb_put_data(bcn, arvif->u.ap.noa_data,
         arvif->u.ap.noa_len);
}
