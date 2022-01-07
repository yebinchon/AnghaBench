
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct firmware {int dummy; } ;
struct brcmf_fw_item {int type; int flags; struct firmware const* binary; int path; } ;
struct brcmf_fw {size_t curpos; TYPE_1__* req; } ;
struct TYPE_2__ {struct brcmf_fw_item* items; } ;


 int BRCMF_FW_REQF_OPTIONAL ;


 int EINVAL ;
 int ENOENT ;
 int TRACE ;
 int brcmf_dbg (int ,char*,int ,char*) ;
 int brcmf_err (char*,int) ;
 int brcmf_fw_request_nvram_done (struct firmware const*,struct brcmf_fw*) ;
 int release_firmware (struct firmware const*) ;

__attribute__((used)) static int brcmf_fw_complete_request(const struct firmware *fw,
         struct brcmf_fw *fwctx)
{
 struct brcmf_fw_item *cur = &fwctx->req->items[fwctx->curpos];
 int ret = 0;

 brcmf_dbg(TRACE, "firmware %s %sfound\n", cur->path, fw ? "" : "not ");

 switch (cur->type) {
 case 128:
  ret = brcmf_fw_request_nvram_done(fw, fwctx);
  break;
 case 129:
  if (fw)
   cur->binary = fw;
  else
   ret = -ENOENT;
  break;
 default:

  brcmf_err("unknown fw type: %d\n", cur->type);
  release_firmware(fw);
  ret = -EINVAL;
 }

 return (cur->flags & BRCMF_FW_REQF_OPTIONAL) ? 0 : ret;
}
