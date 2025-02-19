
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware {int dummy; } ;
struct c8sectpfei {int fw_loaded; scalar_t__ io; int dev; } ;


 scalar_t__ DMA_CPU_RUN ;
 scalar_t__ DMA_PER_STBUS_SYNC ;
 int FIRMWARE_MEMDMA ;
 int atomic_set (int *,int) ;
 int c8sectpfe_elf_sanity_check (struct c8sectpfei*,struct firmware const*) ;
 int configure_channels (struct c8sectpfei*) ;
 int dev_err (int ,char*,int) ;
 int dev_info (int ,char*,...) ;
 int load_slim_core_fw (struct firmware const*,struct c8sectpfei*) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,int ,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int load_c8sectpfe_fw(struct c8sectpfei *fei)
{
 const struct firmware *fw;
 int err;

 dev_info(fei->dev, "Loading firmware: %s\n", FIRMWARE_MEMDMA);

 err = request_firmware(&fw, FIRMWARE_MEMDMA, fei->dev);
 if (err)
  return err;

 err = c8sectpfe_elf_sanity_check(fei, fw);
 if (err) {
  dev_err(fei->dev, "c8sectpfe_elf_sanity_check failed err=(%d)\n"
   , err);
  release_firmware(fw);
  return err;
 }

 err = load_slim_core_fw(fw, fei);
 if (err) {
  dev_err(fei->dev, "load_slim_core_fw failed err=(%d)\n", err);
  return err;
 }


 err = configure_channels(fei);
 if (err) {
  dev_err(fei->dev, "configure_channels failed err=(%d)\n", err);
  return err;
 }





 writel(0x1, fei->io + DMA_PER_STBUS_SYNC);

 dev_info(fei->dev, "Boot the memdma SLIM core\n");
 writel(0x1, fei->io + DMA_CPU_RUN);

 atomic_set(&fei->fw_loaded, 1);

 return 0;
}
