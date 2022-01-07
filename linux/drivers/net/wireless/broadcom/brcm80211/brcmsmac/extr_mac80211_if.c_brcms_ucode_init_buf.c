
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct firmware_hdr {int offset; int idx; int len; } ;
struct TYPE_8__ {int fw_cnt; int* hdr_num_entries; TYPE_2__** fw_bin; TYPE_1__** fw_hdr; } ;
struct brcms_info {TYPE_5__* wlc; TYPE_3__ fw; } ;
struct TYPE_10__ {TYPE_4__* hw; } ;
struct TYPE_9__ {int d11core; } ;
struct TYPE_7__ {int * data; } ;
struct TYPE_6__ {scalar_t__ data; } ;


 int ENODATA ;
 int GFP_KERNEL ;
 int brcms_err (int ,char*,scalar_t__) ;
 void* kvmalloc (scalar_t__,int ) ;
 int le32_to_cpu (int ) ;
 int memcpy (void*,int const*,scalar_t__) ;

int brcms_ucode_init_buf(struct brcms_info *wl, void **pbuf, u32 idx)
{
 int i, entry;
 const u8 *pdata;
 struct firmware_hdr *hdr;
 for (i = 0; i < wl->fw.fw_cnt; i++) {
  hdr = (struct firmware_hdr *)wl->fw.fw_hdr[i]->data;
  for (entry = 0; entry < wl->fw.hdr_num_entries[i];
       entry++, hdr++) {
   u32 len = le32_to_cpu(hdr->len);
   if (le32_to_cpu(hdr->idx) == idx) {
    pdata = wl->fw.fw_bin[i]->data +
     le32_to_cpu(hdr->offset);
    *pbuf = kvmalloc(len, GFP_KERNEL);
    if (*pbuf == ((void*)0))
     goto fail;
    memcpy(*pbuf, pdata, len);
    return 0;
   }
  }
 }
 brcms_err(wl->wlc->hw->d11core,
    "ERROR: ucode buf tag:%d can not be found!\n", idx);
 *pbuf = ((void*)0);
fail:
 return -ENODATA;
}
