
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {void* len; void* type; } ;
struct mrvl_ie_rates_param_set {TYPE_1__ header; } ;
struct cfg80211_bss {int dummy; } ;


 int TLV_TYPE_RATES ;
 int WLAN_EID_EXT_SUPP_RATES ;
 int WLAN_EID_SUPP_RATES ;
 int * add_ie_rates (int *,int const*,int*) ;
 void* cpu_to_le16 (int) ;
 int * ieee80211_bss_get_ie (struct cfg80211_bss*,int ) ;
 int lbs_deb_assoc (char*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int lbs_add_common_rates_tlv(u8 *tlv, struct cfg80211_bss *bss)
{
 struct mrvl_ie_rates_param_set *rate_tlv = (void *)tlv;
 const u8 *rates_eid, *ext_rates_eid;
 int n = 0;

 rcu_read_lock();
 rates_eid = ieee80211_bss_get_ie(bss, WLAN_EID_SUPP_RATES);
 ext_rates_eid = ieee80211_bss_get_ie(bss, WLAN_EID_EXT_SUPP_RATES);






 rate_tlv->header.type = cpu_to_le16(TLV_TYPE_RATES);
 tlv += sizeof(rate_tlv->header);


 if (rates_eid) {
  tlv = add_ie_rates(tlv, rates_eid, &n);


  if (ext_rates_eid)
   tlv = add_ie_rates(tlv, ext_rates_eid, &n);
 } else {
  lbs_deb_assoc("assoc: bss had no basic rate IE\n");

  *tlv++ = 0x82;
  *tlv++ = 0x84;
  *tlv++ = 0x8b;
  *tlv++ = 0x96;
  n = 4;
 }
 rcu_read_unlock();

 rate_tlv->header.len = cpu_to_le16(n);
 return sizeof(rate_tlv->header) + n;
}
