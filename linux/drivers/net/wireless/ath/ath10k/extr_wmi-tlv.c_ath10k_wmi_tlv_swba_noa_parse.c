
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct wmi_tlv_swba_parse {scalar_t__ n_noa; TYPE_1__* arg; } ;
struct ath10k {int dummy; } ;
struct TYPE_2__ {void const** noa_info; } ;


 scalar_t__ ARRAY_SIZE (void const**) ;
 int ENOBUFS ;
 int EPROTO ;
 scalar_t__ WMI_TLV_TAG_STRUCT_P2P_NOA_INFO ;

__attribute__((used)) static int ath10k_wmi_tlv_swba_noa_parse(struct ath10k *ar, u16 tag, u16 len,
      const void *ptr, void *data)
{
 struct wmi_tlv_swba_parse *swba = data;

 if (tag != WMI_TLV_TAG_STRUCT_P2P_NOA_INFO)
  return -EPROTO;

 if (swba->n_noa >= ARRAY_SIZE(swba->arg->noa_info))
  return -ENOBUFS;

 swba->arg->noa_info[swba->n_noa++] = ptr;
 return 0;
}
