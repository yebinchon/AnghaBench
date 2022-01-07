
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wil_sta_info {int dummy; } ;
struct wil6210_priv {struct wil_sta_info* sta; } ;
typedef enum wmi_key_usage { ____Placeholder_wmi_key_usage } wmi_key_usage ;


 int EINVAL ;
 struct wil_sta_info* ERR_PTR (int) ;
 int WMI_KEY_USE_RX_GROUP ;
 int WMI_KEY_USE_TX_GROUP ;
 int * key_usage_str ;
 int wil_err (struct wil6210_priv*,char*,int const*,int ) ;
 int wil_find_cid (struct wil6210_priv*,int ,int const*) ;
 int wil_find_cid_by_idx (struct wil6210_priv*,int ,int ) ;

__attribute__((used)) static struct wil_sta_info *
wil_find_sta_by_key_usage(struct wil6210_priv *wil, u8 mid,
     enum wmi_key_usage key_usage, const u8 *mac_addr)
{
 int cid = -EINVAL;

 if (key_usage == WMI_KEY_USE_TX_GROUP)
  return ((void*)0);


 if (mac_addr)
  cid = wil_find_cid(wil, mid, mac_addr);
 else if (key_usage == WMI_KEY_USE_RX_GROUP)
  cid = wil_find_cid_by_idx(wil, mid, 0);
 if (cid < 0) {
  wil_err(wil, "No CID for %pM %s\n", mac_addr,
   key_usage_str[key_usage]);
  return ERR_PTR(cid);
 }

 return &wil->sta[cid];
}
