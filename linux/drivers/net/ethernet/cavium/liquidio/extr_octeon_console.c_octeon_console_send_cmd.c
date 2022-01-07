
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct octeon_device {TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int dev; } ;


 int BOOTLOADER_PCI_READ_BUFFER_DATA_ADDR ;
 int BOOTLOADER_PCI_READ_BUFFER_LEN_ADDR ;
 int BOOTLOADER_PCI_READ_BUFFER_OWNER_ADDR ;
 int BOOTLOADER_PCI_WRITE_BUFFER_STR_LEN ;
 int OCTEON_PCI_IO_BUF_OWNER_OCTEON ;
 int dev_dbg (int *,char*,char*) ;
 int dev_err (int *,char*,...) ;
 int octeon_pci_write_core_mem (struct octeon_device*,int ,int *,int) ;
 int octeon_remote_lock () ;
 int octeon_remote_unlock () ;
 scalar_t__ octeon_wait_for_bootloader (struct octeon_device*,int) ;
 int octeon_write_device_mem32 (struct octeon_device*,int ,int) ;
 int strlen (char*) ;

int octeon_console_send_cmd(struct octeon_device *oct, char *cmd_str,
       u32 wait_hundredths)
{
 u32 len = (u32)strlen(cmd_str);

 dev_dbg(&oct->pci_dev->dev, "sending \"%s\" to bootloader\n", cmd_str);

 if (len > BOOTLOADER_PCI_WRITE_BUFFER_STR_LEN - 1) {
  dev_err(&oct->pci_dev->dev, "Command string too long, max length is: %d\n",
   BOOTLOADER_PCI_WRITE_BUFFER_STR_LEN - 1);
  return -1;
 }

 if (octeon_wait_for_bootloader(oct, wait_hundredths) != 0) {
  dev_err(&oct->pci_dev->dev, "Bootloader not ready for command.\n");
  return -1;
 }


 octeon_remote_lock();
 octeon_pci_write_core_mem(oct, BOOTLOADER_PCI_READ_BUFFER_DATA_ADDR,
      (u8 *)cmd_str, len);
 octeon_write_device_mem32(oct, BOOTLOADER_PCI_READ_BUFFER_LEN_ADDR,
      len);
 octeon_write_device_mem32(oct, BOOTLOADER_PCI_READ_BUFFER_OWNER_ADDR,
      OCTEON_PCI_IO_BUF_OWNER_OCTEON);




 if (octeon_wait_for_bootloader(oct, 200) != 0) {
  octeon_remote_unlock();
  dev_err(&oct->pci_dev->dev, "Bootloader did not accept command.\n");
  return -1;
 }
 octeon_remote_unlock();
 return 0;
}
