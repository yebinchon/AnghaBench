
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_fw_request {int n_items; struct brcmf_fw_item* items; } ;
struct brcmf_fw_item {int path; } ;



__attribute__((used)) static bool brcmf_fw_request_is_valid(struct brcmf_fw_request *req)
{
 struct brcmf_fw_item *item;
 int i;

 if (!req->n_items)
  return 0;

 for (i = 0, item = &req->items[0]; i < req->n_items; i++, item++) {
  if (!item->path)
   return 0;
 }
 return 1;
}
