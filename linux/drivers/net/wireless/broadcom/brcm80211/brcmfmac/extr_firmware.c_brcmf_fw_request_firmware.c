
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct firmware {int dummy; } ;
struct brcmf_fw_item {scalar_t__ type; char* path; } ;
struct brcmf_fw {size_t curpos; int dev; TYPE_1__* req; } ;
struct TYPE_2__ {char* board_type; struct brcmf_fw_item* items; } ;


 int BRCMF_FW_NAME_LEN ;
 scalar_t__ BRCMF_FW_TYPE_NVRAM ;
 int request_firmware (struct firmware const**,char*,int ) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static int brcmf_fw_request_firmware(const struct firmware **fw,
         struct brcmf_fw *fwctx)
{
 struct brcmf_fw_item *cur = &fwctx->req->items[fwctx->curpos];
 int ret;


 if (cur->type == BRCMF_FW_TYPE_NVRAM && fwctx->req->board_type) {
  char alt_path[BRCMF_FW_NAME_LEN];

  strlcpy(alt_path, cur->path, BRCMF_FW_NAME_LEN);

  alt_path[strlen(alt_path) - 4] = 0;
  strlcat(alt_path, ".", BRCMF_FW_NAME_LEN);
  strlcat(alt_path, fwctx->req->board_type, BRCMF_FW_NAME_LEN);
  strlcat(alt_path, ".txt", BRCMF_FW_NAME_LEN);

  ret = request_firmware(fw, alt_path, fwctx->dev);
  if (ret == 0)
   return ret;
 }

 return request_firmware(fw, cur->path, fwctx->dev);
}
