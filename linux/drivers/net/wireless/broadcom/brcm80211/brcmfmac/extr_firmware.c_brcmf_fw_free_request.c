
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcmf_fw_request {int n_items; struct brcmf_fw_item* items; } ;
struct TYPE_2__ {int data; } ;
struct brcmf_fw_item {scalar_t__ type; TYPE_1__ nv_data; int binary; } ;


 scalar_t__ BRCMF_FW_TYPE_BINARY ;
 scalar_t__ BRCMF_FW_TYPE_NVRAM ;
 int brcmf_fw_nvram_free (int ) ;
 int kfree (struct brcmf_fw_request*) ;
 int release_firmware (int ) ;

__attribute__((used)) static void brcmf_fw_free_request(struct brcmf_fw_request *req)
{
 struct brcmf_fw_item *item;
 int i;

 for (i = 0, item = &req->items[0]; i < req->n_items; i++, item++) {
  if (item->type == BRCMF_FW_TYPE_BINARY)
   release_firmware(item->binary);
  else if (item->type == BRCMF_FW_TYPE_NVRAM)
   brcmf_fw_nvram_free(item->nv_data.data);
 }
 kfree(req);
}
