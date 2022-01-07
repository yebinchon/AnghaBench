
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct firmware {int data; } ;
struct brcmf_sdio {TYPE_1__* sdiodev; int ci; } ;
struct TYPE_2__ {int func1; } ;


 int CLK_AVAIL ;
 int CLK_SDONLY ;
 int SDIO ;
 int brcmf_chip_set_active (int ,int ) ;
 int brcmf_dbg (int ,char*,int ) ;
 int brcmf_err (char*) ;
 int brcmf_fw_nvram_free (void*) ;
 int brcmf_sdio_clkctl (struct brcmf_sdio*,int ,int) ;
 int brcmf_sdio_download_code_file (struct brcmf_sdio*,struct firmware const*) ;
 int brcmf_sdio_download_nvram (struct brcmf_sdio*,void*,int ) ;
 int get_unaligned_le32 (int ) ;
 int release_firmware (struct firmware const*) ;
 int sdio_claim_host (int ) ;
 int sdio_release_host (int ) ;

__attribute__((used)) static int brcmf_sdio_download_firmware(struct brcmf_sdio *bus,
     const struct firmware *fw,
     void *nvram, u32 nvlen)
{
 int bcmerror;
 u32 rstvec;

 sdio_claim_host(bus->sdiodev->func1);
 brcmf_sdio_clkctl(bus, CLK_AVAIL, 0);

 rstvec = get_unaligned_le32(fw->data);
 brcmf_dbg(SDIO, "firmware rstvec: %x\n", rstvec);

 bcmerror = brcmf_sdio_download_code_file(bus, fw);
 release_firmware(fw);
 if (bcmerror) {
  brcmf_err("dongle image file download failed\n");
  brcmf_fw_nvram_free(nvram);
  goto err;
 }

 bcmerror = brcmf_sdio_download_nvram(bus, nvram, nvlen);
 brcmf_fw_nvram_free(nvram);
 if (bcmerror) {
  brcmf_err("dongle nvram file download failed\n");
  goto err;
 }


 if (!brcmf_chip_set_active(bus->ci, rstvec)) {
  brcmf_err("error getting out of ARM core reset\n");
  goto err;
 }

err:
 brcmf_sdio_clkctl(bus, CLK_SDONLY, 0);
 sdio_release_host(bus->sdiodev->func1);
 return bcmerror;
}
