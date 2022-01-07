
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wmi_tlv {int len; } ;


 int __le16_to_cpu (int ) ;

__attribute__((used)) static u16 ath10k_wmi_tlv_len(const void *ptr)
{
 return __le16_to_cpu((((const struct wmi_tlv *)ptr) - 1)->len);
}
