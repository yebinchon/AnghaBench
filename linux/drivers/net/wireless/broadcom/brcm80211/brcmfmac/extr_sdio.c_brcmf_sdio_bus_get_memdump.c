
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct brcmf_sdio_dev {int func1; struct brcmf_sdio* bus; } ;
struct brcmf_sdio {TYPE_2__* ci; } ;
struct TYPE_3__ {struct brcmf_sdio_dev* sdio; } ;
struct brcmf_bus {TYPE_1__ bus_priv; } ;
struct TYPE_4__ {int rambase; } ;


 int INFO ;
 int MEMBLOCK ;
 int brcmf_dbg (int ,char*,int,size_t) ;
 int brcmf_err (char*,int,int,int) ;
 int brcmf_sdiod_ramrw (struct brcmf_sdio_dev*,int,int,void*,int) ;
 struct brcmf_bus* dev_get_drvdata (struct device*) ;
 int sdio_claim_host (int ) ;
 int sdio_release_host (int ) ;

__attribute__((used)) static int brcmf_sdio_bus_get_memdump(struct device *dev, void *data,
          size_t mem_size)
{
 struct brcmf_bus *bus_if = dev_get_drvdata(dev);
 struct brcmf_sdio_dev *sdiodev = bus_if->bus_priv.sdio;
 struct brcmf_sdio *bus = sdiodev->bus;
 int err;
 int address;
 int offset;
 int len;

 brcmf_dbg(INFO, "dump at 0x%08x: size=%zu\n", bus->ci->rambase,
    mem_size);

 address = bus->ci->rambase;
 offset = err = 0;
 sdio_claim_host(sdiodev->func1);
 while (offset < mem_size) {
  len = ((offset + MEMBLOCK) < mem_size) ? MEMBLOCK :
        mem_size - offset;
  err = brcmf_sdiod_ramrw(sdiodev, 0, address, data, len);
  if (err) {
   brcmf_err("error %d on reading %d membytes at 0x%08x\n",
      err, len, address);
   goto done;
  }
  data += len;
  offset += len;
  address += len;
 }

done:
 sdio_release_host(sdiodev->func1);
 return err;
}
