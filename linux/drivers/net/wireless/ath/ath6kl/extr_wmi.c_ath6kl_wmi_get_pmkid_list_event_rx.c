
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wmi_pmkid_list_reply {int num_pmkid; } ;
struct wmi {int dummy; } ;


 int EINVAL ;
 int WMI_PMKID_LEN ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int ath6kl_wmi_get_pmkid_list_event_rx(struct wmi *wmi, u8 *datap,
           u32 len)
{
 struct wmi_pmkid_list_reply *reply;
 u32 expected_len;

 if (len < sizeof(struct wmi_pmkid_list_reply))
  return -EINVAL;

 reply = (struct wmi_pmkid_list_reply *)datap;
 expected_len = sizeof(reply->num_pmkid) +
  le32_to_cpu(reply->num_pmkid) * WMI_PMKID_LEN;

 if (len < expected_len)
  return -EINVAL;

 return 0;
}
