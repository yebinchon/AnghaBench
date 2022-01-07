
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef void* u32 ;
typedef int u16 ;
struct TYPE_6__ {TYPE_2__* ext_info; } ;
struct ath10k_sdio {void** mbox_size; void** mbox_addr; TYPE_3__ mbox_info; scalar_t__ swap_mbox; } ;
struct ath10k_htc {TYPE_1__* endpoint; } ;
struct ath10k {struct ath10k_htc htc; } ;
typedef enum ath10k_htc_ep_id { ____Placeholder_ath10k_htc_ep_id } ath10k_htc_ep_id ;
struct TYPE_5__ {void* htc_ext_sz; void* htc_ext_addr; } ;
struct TYPE_4__ {int service_id; int eid; } ;


 int ATH10K_DBG_SDIO ;
 int ATH10K_HTC_EP_COUNT ;



 int EINVAL ;
 int ath10k_dbg (struct ath10k*,int ,char*,void*,void*) ;
 struct ath10k_sdio* ath10k_sdio_priv (struct ath10k*) ;
 int ath10k_warn (struct ath10k*,char*,int) ;

__attribute__((used)) static int ath10k_sdio_hif_map_service_to_pipe(struct ath10k *ar,
            u16 service_id,
            u8 *ul_pipe, u8 *dl_pipe)
{
 struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
 struct ath10k_htc *htc = &ar->htc;
 u32 htt_addr, wmi_addr, htt_mbox_size, wmi_mbox_size;
 enum ath10k_htc_ep_id eid;
 bool ep_found = 0;
 int i;






 for (i = 0; i < ATH10K_HTC_EP_COUNT; i++) {
  if (htc->endpoint[i].service_id == service_id) {
   eid = htc->endpoint[i].eid;
   ep_found = 1;
   break;
  }
 }

 if (!ep_found)
  return -EINVAL;




 *ul_pipe = *dl_pipe = (u8)eid;






 if (ar_sdio->swap_mbox) {
  htt_addr = ar_sdio->mbox_info.ext_info[0].htc_ext_addr;
  wmi_addr = ar_sdio->mbox_info.ext_info[1].htc_ext_addr;
  htt_mbox_size = ar_sdio->mbox_info.ext_info[0].htc_ext_sz;
  wmi_mbox_size = ar_sdio->mbox_info.ext_info[1].htc_ext_sz;
 } else {
  htt_addr = ar_sdio->mbox_info.ext_info[1].htc_ext_addr;
  wmi_addr = ar_sdio->mbox_info.ext_info[0].htc_ext_addr;
  htt_mbox_size = ar_sdio->mbox_info.ext_info[1].htc_ext_sz;
  wmi_mbox_size = ar_sdio->mbox_info.ext_info[0].htc_ext_sz;
 }

 switch (service_id) {
 case 129:



  break;
 case 128:
  ar_sdio->mbox_addr[eid] = wmi_addr;
  ar_sdio->mbox_size[eid] = wmi_mbox_size;
  ath10k_dbg(ar, ATH10K_DBG_SDIO,
      "sdio wmi ctrl mbox_addr 0x%x mbox_size %d\n",
      ar_sdio->mbox_addr[eid], ar_sdio->mbox_size[eid]);
  break;
 case 130:
  ar_sdio->mbox_addr[eid] = htt_addr;
  ar_sdio->mbox_size[eid] = htt_mbox_size;
  ath10k_dbg(ar, ATH10K_DBG_SDIO,
      "sdio htt data mbox_addr 0x%x mbox_size %d\n",
      ar_sdio->mbox_addr[eid], ar_sdio->mbox_size[eid]);
  break;
 default:
  ath10k_warn(ar, "unsupported HTC service id: %d\n",
       service_id);
  return -EINVAL;
 }

 return 0;
}
