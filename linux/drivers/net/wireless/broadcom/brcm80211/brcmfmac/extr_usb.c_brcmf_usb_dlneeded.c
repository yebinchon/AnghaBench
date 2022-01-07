
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int devid; int chiprev; } ;
struct brcmf_usbdev_info {TYPE_1__ bus_pub; } ;
struct bootrom_id_le {int chiprev; int chip; } ;
typedef int id ;


 int BRCMF_POSTBOOT_ID ;
 int DL_GETVER ;
 int DL_RESETCFG ;
 int USB ;
 int brcmf_dbg (int ,char*,...) ;
 int brcmf_usb_dl_cmd (struct brcmf_usbdev_info*,int ,struct bootrom_id_le*,int) ;
 int cpu_to_le32 (int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static bool
brcmf_usb_dlneeded(struct brcmf_usbdev_info *devinfo)
{
 struct bootrom_id_le id;
 u32 chipid, chiprev;

 brcmf_dbg(USB, "Enter\n");

 if (devinfo == ((void*)0))
  return 0;


 id.chip = cpu_to_le32(0xDEAD);
 brcmf_usb_dl_cmd(devinfo, DL_GETVER, &id, sizeof(id));

 chipid = le32_to_cpu(id.chip);
 chiprev = le32_to_cpu(id.chiprev);

 if ((chipid & 0x4300) == 0x4300)
  brcmf_dbg(USB, "chip %x rev 0x%x\n", chipid, chiprev);
 else
  brcmf_dbg(USB, "chip %d rev 0x%x\n", chipid, chiprev);
 if (chipid == BRCMF_POSTBOOT_ID) {
  brcmf_dbg(USB, "firmware already downloaded\n");
  brcmf_usb_dl_cmd(devinfo, DL_RESETCFG, &id, sizeof(id));
  return 0;
 } else {
  devinfo->bus_pub.devid = chipid;
  devinfo->bus_pub.chiprev = chiprev;
 }
 return 1;
}
