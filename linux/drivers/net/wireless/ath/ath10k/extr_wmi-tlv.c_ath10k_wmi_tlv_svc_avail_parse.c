
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wmi_svc_avail_ev_arg {void const* service_map_ext; int service_map_ext_len; } ;
struct ath10k {int dummy; } ;
typedef int __le32 ;


 int EPROTO ;


__attribute__((used)) static int ath10k_wmi_tlv_svc_avail_parse(struct ath10k *ar, u16 tag, u16 len,
       const void *ptr, void *data)
{
 struct wmi_svc_avail_ev_arg *arg = data;

 switch (tag) {
 case 128:
  arg->service_map_ext_len = *(__le32 *)ptr;
  arg->service_map_ext = ptr + sizeof(__le32);
  return 0;
 default:
  break;
 }
 return -EPROTO;
}
