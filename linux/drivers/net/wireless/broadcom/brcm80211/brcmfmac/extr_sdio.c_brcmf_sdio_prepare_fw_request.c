
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct brcmf_sdio {TYPE_4__* sdiodev; TYPE_1__* ci; } ;
struct brcmf_fw_request {int board_type; TYPE_2__* items; } ;
struct brcmf_fw_name {char* member_0; int member_1; } ;
struct TYPE_8__ {TYPE_3__* settings; int nvram_name; int fw_name; } ;
struct TYPE_7__ {int board_type; } ;
struct TYPE_6__ {int type; } ;
struct TYPE_5__ {int chiprev; int chip; } ;


 int ARRAY_SIZE (struct brcmf_fw_name*) ;
 int BRCMF_FW_TYPE_BINARY ;
 int BRCMF_FW_TYPE_NVRAM ;
 size_t BRCMF_SDIO_FW_CODE ;
 size_t BRCMF_SDIO_FW_NVRAM ;
 struct brcmf_fw_request* brcmf_fw_alloc_request (int ,int ,struct brcmf_fw_name*,int ,struct brcmf_fw_name*,int ) ;
 struct brcmf_fw_name* brcmf_sdio_fwnames ;

__attribute__((used)) static struct brcmf_fw_request *
brcmf_sdio_prepare_fw_request(struct brcmf_sdio *bus)
{
 struct brcmf_fw_request *fwreq;
 struct brcmf_fw_name fwnames[] = {
  { ".bin", bus->sdiodev->fw_name },
  { ".txt", bus->sdiodev->nvram_name },
 };

 fwreq = brcmf_fw_alloc_request(bus->ci->chip, bus->ci->chiprev,
           brcmf_sdio_fwnames,
           ARRAY_SIZE(brcmf_sdio_fwnames),
           fwnames, ARRAY_SIZE(fwnames));
 if (!fwreq)
  return ((void*)0);

 fwreq->items[BRCMF_SDIO_FW_CODE].type = BRCMF_FW_TYPE_BINARY;
 fwreq->items[BRCMF_SDIO_FW_NVRAM].type = BRCMF_FW_TYPE_NVRAM;
 fwreq->board_type = bus->sdiodev->settings->board_type;

 return fwreq;
}
