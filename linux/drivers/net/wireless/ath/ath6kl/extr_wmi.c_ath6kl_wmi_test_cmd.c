
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi {int dummy; } ;
struct sk_buff {int data; } ;


 int ENOMEM ;
 int NO_SYNC_WMIFLAG ;
 int WMI_TEST_CMDID ;
 int ath6kl_wmi_cmd_send (struct wmi*,int ,struct sk_buff*,int ,int ) ;
 struct sk_buff* ath6kl_wmi_get_new_buf (size_t) ;
 int memcpy (int ,void*,size_t) ;

int ath6kl_wmi_test_cmd(struct wmi *wmi, void *buf, size_t len)
{
 struct sk_buff *skb;
 int ret;

 skb = ath6kl_wmi_get_new_buf(len);
 if (!skb)
  return -ENOMEM;

 memcpy(skb->data, buf, len);

 ret = ath6kl_wmi_cmd_send(wmi, 0, skb, WMI_TEST_CMDID, NO_SYNC_WMIFLAG);

 return ret;
}
