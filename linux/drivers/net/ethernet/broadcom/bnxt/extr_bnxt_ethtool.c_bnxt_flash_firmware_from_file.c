
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dev; } ;
struct firmware {int size; int data; } ;


 int BNX_DIR_ORDINAL_FIRST ;
 int bnxt_dir_type_is_ape_bin_format (int ) ;
 int bnxt_dir_type_is_other_exec_format (int ) ;
 int bnxt_flash_firmware (struct net_device*,int ,int ,int ) ;
 int bnxt_flash_microcode (struct net_device*,int ,int ,int ) ;
 int bnxt_flash_nvram (struct net_device*,int ,int ,int ,int ,int ,int ) ;
 int netdev_err (struct net_device*,char*,int,char const*) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char const*,int *) ;

__attribute__((used)) static int bnxt_flash_firmware_from_file(struct net_device *dev,
      u16 dir_type,
      const char *filename)
{
 const struct firmware *fw;
 int rc;

 rc = request_firmware(&fw, filename, &dev->dev);
 if (rc != 0) {
  netdev_err(dev, "Error %d requesting firmware file: %s\n",
      rc, filename);
  return rc;
 }
 if (bnxt_dir_type_is_ape_bin_format(dir_type) == 1)
  rc = bnxt_flash_firmware(dev, dir_type, fw->data, fw->size);
 else if (bnxt_dir_type_is_other_exec_format(dir_type) == 1)
  rc = bnxt_flash_microcode(dev, dir_type, fw->data, fw->size);
 else
  rc = bnxt_flash_nvram(dev, dir_type, BNX_DIR_ORDINAL_FIRST,
          0, 0, fw->data, fw->size);
 release_firmware(fw);
 return rc;
}
