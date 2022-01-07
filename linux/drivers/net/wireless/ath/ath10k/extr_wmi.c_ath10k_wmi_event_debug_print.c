
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; char* data; } ;
struct ath10k {int dummy; } ;
typedef int buf ;


 int ATH10K_DBG_WMI_PRINT ;
 int ath10k_dbg (struct ath10k*,int ,char*,char*) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 scalar_t__ isascii (char) ;
 scalar_t__ isprint (char) ;

void ath10k_wmi_event_debug_print(struct ath10k *ar, struct sk_buff *skb)
{
 char buf[101], c;
 int i;

 for (i = 0; i < sizeof(buf) - 1; i++) {
  if (i >= skb->len)
   break;

  c = skb->data[i];

  if (c == '\0')
   break;

  if (isascii(c) && isprint(c))
   buf[i] = c;
  else
   buf[i] = '.';
 }

 if (i == sizeof(buf) - 1)
  ath10k_warn(ar, "wmi debug print truncated: %d\n", skb->len);


 if (skb->data[i - 1] == '\n')
  i--;


 buf[i] = '\0';

 ath10k_dbg(ar, ATH10K_DBG_WMI_PRINT, "wmi print '%s'\n", buf);
}
