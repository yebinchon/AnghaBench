
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct wmi_tlv_swba_parse {size_t n_tim; TYPE_1__* arg; } ;
struct wmi_tim_info_arg {int tim_num_ps_pending; int tim_changed; int tim_bitmap; int tim_mcast; int tim_len; } ;
struct wmi_tim_info {int tim_num_ps_pending; int tim_changed; int tim_bitmap; int tim_mcast; int tim_len; } ;
struct ath10k {int dummy; } ;
struct TYPE_2__ {struct wmi_tim_info_arg* tim_info; } ;


 size_t ARRAY_SIZE (struct wmi_tim_info_arg*) ;
 int ENOBUFS ;
 int EPROTO ;
 scalar_t__ WMI_TLV_TAG_STRUCT_TIM_INFO ;
 int __le32_to_cpu (int ) ;
 int ath10k_warn (struct ath10k*,char*) ;

__attribute__((used)) static int ath10k_wmi_tlv_swba_tim_parse(struct ath10k *ar, u16 tag, u16 len,
      const void *ptr, void *data)
{
 struct wmi_tlv_swba_parse *swba = data;
 struct wmi_tim_info_arg *tim_info_arg;
 const struct wmi_tim_info *tim_info_ev = ptr;

 if (tag != WMI_TLV_TAG_STRUCT_TIM_INFO)
  return -EPROTO;

 if (swba->n_tim >= ARRAY_SIZE(swba->arg->tim_info))
  return -ENOBUFS;

 if (__le32_to_cpu(tim_info_ev->tim_len) >
      sizeof(tim_info_ev->tim_bitmap)) {
  ath10k_warn(ar, "refusing to parse invalid swba structure\n");
  return -EPROTO;
 }

 tim_info_arg = &swba->arg->tim_info[swba->n_tim];
 tim_info_arg->tim_len = tim_info_ev->tim_len;
 tim_info_arg->tim_mcast = tim_info_ev->tim_mcast;
 tim_info_arg->tim_bitmap = tim_info_ev->tim_bitmap;
 tim_info_arg->tim_changed = tim_info_ev->tim_changed;
 tim_info_arg->tim_num_ps_pending = tim_info_ev->tim_num_ps_pending;

 swba->n_tim++;

 return 0;
}
