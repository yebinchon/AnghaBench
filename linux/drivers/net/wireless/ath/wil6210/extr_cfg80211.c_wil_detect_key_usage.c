
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int iftype; } ;
struct wil6210_priv {int dummy; } ;
typedef enum wmi_key_usage { ____Placeholder_wmi_key_usage } wmi_key_usage ;






 int WMI_KEY_USE_PAIRWISE ;
 int WMI_KEY_USE_RX_GROUP ;
 int WMI_KEY_USE_TX_GROUP ;
 int * key_usage_str ;
 struct wil6210_priv* wdev_to_wil (struct wireless_dev*) ;
 int wil_dbg_misc (struct wil6210_priv*,char*,int ) ;
 int wil_err (struct wil6210_priv*,char*) ;

__attribute__((used)) static enum wmi_key_usage wil_detect_key_usage(struct wireless_dev *wdev,
            bool pairwise)
{
 struct wil6210_priv *wil = wdev_to_wil(wdev);
 enum wmi_key_usage rc;

 if (pairwise) {
  rc = WMI_KEY_USE_PAIRWISE;
 } else {
  switch (wdev->iftype) {
  case 128:
  case 130:
   rc = WMI_KEY_USE_RX_GROUP;
   break;
  case 131:
  case 129:
   rc = WMI_KEY_USE_TX_GROUP;
   break;
  default:

   wil_err(wil, "Can't determine GTK type\n");
   rc = WMI_KEY_USE_RX_GROUP;
   break;
  }
 }
 wil_dbg_misc(wil, "detect_key_usage: -> %s\n", key_usage_str[rc]);

 return rc;
}
