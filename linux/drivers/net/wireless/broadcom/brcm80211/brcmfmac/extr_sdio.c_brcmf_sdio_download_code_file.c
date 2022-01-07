
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct firmware {scalar_t__ size; scalar_t__ data; } ;
struct brcmf_sdio {TYPE_1__* ci; int sdiodev; } ;
struct TYPE_2__ {int rambase; } ;


 int EIO ;
 int TRACE ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_err (char*,int,int,int ) ;
 int brcmf_sdio_verifymemory (int ,int ,int *,scalar_t__) ;
 int brcmf_sdiod_ramrw (int ,int,int ,int *,scalar_t__) ;

__attribute__((used)) static int brcmf_sdio_download_code_file(struct brcmf_sdio *bus,
      const struct firmware *fw)
{
 int err;

 brcmf_dbg(TRACE, "Enter\n");

 err = brcmf_sdiod_ramrw(bus->sdiodev, 1, bus->ci->rambase,
    (u8 *)fw->data, fw->size);
 if (err)
  brcmf_err("error %d on writing %d membytes at 0x%08x\n",
     err, (int)fw->size, bus->ci->rambase);
 else if (!brcmf_sdio_verifymemory(bus->sdiodev, bus->ci->rambase,
       (u8 *)fw->data, fw->size))
  err = -EIO;

 return err;
}
