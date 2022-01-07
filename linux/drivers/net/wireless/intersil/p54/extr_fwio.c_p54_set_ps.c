
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int dummy; } ;
struct p54_psm {int beacon_rssi_skip_max; int nr; int * exclude; scalar_t__ rssi_delta_threshold; TYPE_3__* intervals; void* aid; void* mode; } ;
struct p54_common {int aid; int phy_ps; TYPE_2__* hw; int powersave_override; } ;
struct TYPE_6__ {void* periods; void* interval; } ;
struct TYPE_4__ {int flags; int listen_interval; } ;
struct TYPE_5__ {TYPE_1__ conf; } ;


 unsigned int ARRAY_SIZE (TYPE_3__*) ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int IEEE80211_CONF_PS ;
 int P54_CONTROL_TYPE_PSM ;
 int P54_HDR_FLAG_CONTROL_OPSET ;
 int P54_PSM ;
 int P54_PSM_BEACON_TIMEOUT ;
 int P54_PSM_CAM ;
 int P54_PSM_CHECKSUM ;
 int P54_PSM_DTIM ;
 int P54_PSM_MCBC ;
 int WLAN_EID_TIM ;
 void* cpu_to_le16 (int) ;
 struct sk_buff* p54_alloc_skb (struct p54_common*,int ,int,int ,int ) ;
 int p54_tx (struct p54_common*,struct sk_buff*) ;
 struct p54_psm* skb_put (struct sk_buff*,int) ;

int p54_set_ps(struct p54_common *priv)
{
 struct sk_buff *skb;
 struct p54_psm *psm;
 unsigned int i;
 u16 mode;

 if (priv->hw->conf.flags & IEEE80211_CONF_PS &&
     !priv->powersave_override)
  mode = P54_PSM | P54_PSM_BEACON_TIMEOUT | P54_PSM_DTIM |
         P54_PSM_CHECKSUM | P54_PSM_MCBC;
 else
  mode = P54_PSM_CAM;

 skb = p54_alloc_skb(priv, P54_HDR_FLAG_CONTROL_OPSET, sizeof(*psm),
       P54_CONTROL_TYPE_PSM, GFP_ATOMIC);
 if (!skb)
  return -ENOMEM;

 psm = skb_put(skb, sizeof(*psm));
 psm->mode = cpu_to_le16(mode);
 psm->aid = cpu_to_le16(priv->aid);
 for (i = 0; i < ARRAY_SIZE(psm->intervals); i++) {
  psm->intervals[i].interval =
   cpu_to_le16(priv->hw->conf.listen_interval);
  psm->intervals[i].periods = cpu_to_le16(1);
 }

 psm->beacon_rssi_skip_max = 200;
 psm->rssi_delta_threshold = 0;
 psm->nr = 1;
 psm->exclude[0] = WLAN_EID_TIM;

 p54_tx(priv, skb);
 priv->phy_ps = mode != P54_PSM_CAM;
 return 0;
}
