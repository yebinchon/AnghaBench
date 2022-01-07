
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct ieee80211_tx_info {scalar_t__ rate_driver_data; } ;
struct ieee80211_hdr {int dummy; } ;
struct carl9170_tx_info {scalar_t__ timeout; } ;
struct ar9170 {int dummy; } ;
struct TYPE_4__ {int phy_control; int mac_control; } ;
struct TYPE_3__ {int cookie; } ;
struct _carl9170_tx_superframe {TYPE_2__ f; TYPE_1__ s; scalar_t__ frame_data; } ;
typedef int ssize_t ;


 int ADD (char*,int ,int ,char*,char const*,struct sk_buff*,int ,int ,int ,int ,int ,int ) ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int get_seq_h (struct ieee80211_hdr*) ;
 int ieee80211_get_DA (struct ieee80211_hdr*) ;
 scalar_t__ jiffies ;
 int jiffies_to_msecs (scalar_t__) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void carl9170_debugfs_format_frame(struct ar9170 *ar,
 struct sk_buff *skb, const char *prefix, char *buf,
 ssize_t *off, ssize_t bufsize)
{
 struct _carl9170_tx_superframe *txc = (void *) skb->data;
 struct ieee80211_tx_info *txinfo = IEEE80211_SKB_CB(skb);
 struct carl9170_tx_info *arinfo = (void *) txinfo->rate_driver_data;
 struct ieee80211_hdr *hdr = (void *) txc->frame_data;

 ADD(buf, *off, bufsize, "%s %p, c:%2x, DA:%pM, sq:%4d, mc:%.4x, "
     "pc:%.8x, to:%d ms\n", prefix, skb, txc->s.cookie,
     ieee80211_get_DA(hdr), get_seq_h(hdr),
     le16_to_cpu(txc->f.mac_control), le32_to_cpu(txc->f.phy_control),
     jiffies_to_msecs(jiffies - arinfo->timeout));
}
