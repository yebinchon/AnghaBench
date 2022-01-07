
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct brcmf_sdio {int sdiodev; TYPE_1__* ci; } ;
struct TYPE_2__ {int ramsize; int rambase; } ;


 int EIO ;
 int TRACE ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_err (char*,int,int,int) ;
 int brcmf_sdio_verifymemory (int ,int,void*,int) ;
 int brcmf_sdiod_ramrw (int ,int,int,void*,int) ;

__attribute__((used)) static int brcmf_sdio_download_nvram(struct brcmf_sdio *bus,
         void *vars, u32 varsz)
{
 int address;
 int err;

 brcmf_dbg(TRACE, "Enter\n");

 address = bus->ci->ramsize - varsz + bus->ci->rambase;
 err = brcmf_sdiod_ramrw(bus->sdiodev, 1, address, vars, varsz);
 if (err)
  brcmf_err("error %d on writing %d nvram bytes at 0x%08x\n",
     err, varsz, address);
 else if (!brcmf_sdio_verifymemory(bus->sdiodev, address, vars, varsz))
  err = -EIO;

 return err;
}
