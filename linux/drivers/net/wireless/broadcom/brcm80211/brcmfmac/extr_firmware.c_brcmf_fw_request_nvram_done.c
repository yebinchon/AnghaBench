
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct firmware {size_t size; scalar_t__ data; } ;
struct TYPE_4__ {int len; void* data; } ;
struct brcmf_fw_item {int flags; TYPE_2__ nv_data; } ;
struct brcmf_fw {size_t curpos; TYPE_1__* req; int dev; } ;
struct TYPE_3__ {int bus_nr; int domain_nr; struct brcmf_fw_item* items; } ;


 int BRCMF_FW_REQF_OPTIONAL ;
 int ENOENT ;
 int TRACE ;
 int * bcm47xx_nvram_get_contents (size_t*) ;
 int bcm47xx_nvram_release_contents (int *) ;
 int brcmf_dbg (int ,char*,void*,...) ;
 int * brcmf_fw_nvram_from_efi (size_t*) ;
 void* brcmf_fw_nvram_strip (int *,size_t,int *,int ,int ) ;
 int dev_name (int ) ;
 int kfree (int *) ;
 int release_firmware (struct firmware const*) ;

__attribute__((used)) static int brcmf_fw_request_nvram_done(const struct firmware *fw, void *ctx)
{
 struct brcmf_fw *fwctx = ctx;
 struct brcmf_fw_item *cur;
 bool free_bcm47xx_nvram = 0;
 bool kfree_nvram = 0;
 u32 nvram_length = 0;
 void *nvram = ((void*)0);
 u8 *data = ((void*)0);
 size_t data_len;

 brcmf_dbg(TRACE, "enter: dev=%s\n", dev_name(fwctx->dev));

 cur = &fwctx->req->items[fwctx->curpos];

 if (fw && fw->data) {
  data = (u8 *)fw->data;
  data_len = fw->size;
 } else {
  if ((data = bcm47xx_nvram_get_contents(&data_len)))
   free_bcm47xx_nvram = 1;
  else if ((data = brcmf_fw_nvram_from_efi(&data_len)))
   kfree_nvram = 1;
  else if (!(cur->flags & BRCMF_FW_REQF_OPTIONAL))
   goto fail;
 }

 if (data)
  nvram = brcmf_fw_nvram_strip(data, data_len, &nvram_length,
          fwctx->req->domain_nr,
          fwctx->req->bus_nr);

 if (free_bcm47xx_nvram)
  bcm47xx_nvram_release_contents(data);
 if (kfree_nvram)
  kfree(data);

 release_firmware(fw);
 if (!nvram && !(cur->flags & BRCMF_FW_REQF_OPTIONAL))
  goto fail;

 brcmf_dbg(TRACE, "nvram %p len %d\n", nvram, nvram_length);
 cur->nv_data.data = nvram;
 cur->nv_data.len = nvram_length;
 return 0;

fail:
 return -ENOENT;
}
