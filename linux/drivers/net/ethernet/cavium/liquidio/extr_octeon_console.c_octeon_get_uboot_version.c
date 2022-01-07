
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct octeon_device {TYPE_1__* pci_dev; struct octeon_console* console; } ;
struct octeon_console {char* leftover; scalar_t__ waiting; } ;
typedef int s32 ;
struct TYPE_2__ {int dev; } ;


 int GFP_KERNEL ;
 int OCTEON_UBOOT_VER_BUF_SIZE ;
 int dev_dbg (int *,char*,size_t,char*) ;
 int dev_err (int *,char*,size_t,int) ;
 int dev_info (int *,char*,char*) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int octeon_console_handle_result (struct octeon_device*,size_t) ;
 int octeon_console_read (struct octeon_device*,size_t,char*,int) ;
 scalar_t__ octeon_console_send_cmd (struct octeon_device*,char*,int) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static void octeon_get_uboot_version(struct octeon_device *oct)
{
 s32 bytes_read, tries, total_read;
 struct octeon_console *console;
 u32 console_num = 0;
 char *uboot_ver;
 char *buf;
 char *p;


 buf = kmalloc(512, GFP_KERNEL);
 if (!buf)
  return;

 if (octeon_console_send_cmd(oct, "setenv stdout pci\n", 50)) {
  kfree(buf);
  return;
 }

 if (octeon_console_send_cmd(oct, "version\n", 1)) {
  kfree(buf);
  return;
 }

 console = &oct->console[console_num];
 tries = 0;
 total_read = 0;

 do {



  bytes_read =
   octeon_console_read(oct,
         console_num, buf + total_read,
         512 - 1 -
         total_read);
  if (bytes_read > 0) {
   buf[bytes_read] = '\0';

   total_read += bytes_read;
   if (console->waiting)
    octeon_console_handle_result(oct, console_num);
  } else if (bytes_read < 0) {
   dev_err(&oct->pci_dev->dev, "Error reading console %u, ret=%d\n",
    console_num, bytes_read);
  }

  tries++;
 } while ((bytes_read > 0) && (tries < 16));




 if ((total_read == 0) && (console->leftover[0])) {
  dev_dbg(&oct->pci_dev->dev, "%u: %s\n",
   console_num, console->leftover);
  console->leftover[0] = '\0';
 }

 buf[512 - 1] = '\0';

 uboot_ver = strstr(buf, "U-Boot");
 if (uboot_ver) {
  p = strstr(uboot_ver, "mips");
  if (p) {
   p--;
   *p = '\0';
   dev_info(&oct->pci_dev->dev, "%s\n", uboot_ver);
  }
 }

 kfree(buf);
 octeon_console_send_cmd(oct, "setenv stdout serial\n", 50);
}
