
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct kvaser_pciefd_cfg_img {int dummy; } ;
struct kvaser_pciefd {TYPE_1__* pci; } ;
struct TYPE_2__ {int dev; } ;


 int ARRAY_SIZE (int*) ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KVASER_PCIEFD_CFG_IMG_SZ ;
 int KVASER_PCIEFD_FLASH_ID_EPCS16 ;
 int KVASER_PCIEFD_FLASH_RES_CMD ;
 int KVASER_PCIEFD_FLASH_STATUS_CMD ;
 int dev_err (int *,char*,...) ;
 int kfree (struct kvaser_pciefd_cfg_img*) ;
 struct kvaser_pciefd_cfg_img* kmalloc (int ,int ) ;
 int kvaser_pciefd_cfg_read_and_verify (struct kvaser_pciefd*,struct kvaser_pciefd_cfg_img*) ;
 int kvaser_pciefd_cfg_read_params (struct kvaser_pciefd*,struct kvaser_pciefd_cfg_img*) ;
 int kvaser_pciefd_spi_cmd (struct kvaser_pciefd*,int*,int,int*,int) ;

__attribute__((used)) static int kvaser_pciefd_read_cfg(struct kvaser_pciefd *pcie)
{
 int res;
 struct kvaser_pciefd_cfg_img *img;


 u8 cmd[] = {KVASER_PCIEFD_FLASH_RES_CMD, 0, 0, 0};

 res = kvaser_pciefd_spi_cmd(pcie, cmd, ARRAY_SIZE(cmd), cmd, 1);
 if (res)
  return -EIO;

 img = kmalloc(KVASER_PCIEFD_CFG_IMG_SZ, GFP_KERNEL);
 if (!img)
  return -ENOMEM;

 if (cmd[0] != KVASER_PCIEFD_FLASH_ID_EPCS16) {
  dev_err(&pcie->pci->dev,
   "Flash id is 0x%x instead of expected EPCS16 (0x%x)\n",
   cmd[0], KVASER_PCIEFD_FLASH_ID_EPCS16);

  res = -ENODEV;
  goto image_free;
 }

 cmd[0] = KVASER_PCIEFD_FLASH_STATUS_CMD;
 res = kvaser_pciefd_spi_cmd(pcie, cmd, 1, cmd, 1);
 if (res) {
  goto image_free;
 } else if (cmd[0] & 1) {
  res = -EIO;

  dev_err(&pcie->pci->dev, "Unexpected WIP bit set in flash\n");
  goto image_free;
 }

 res = kvaser_pciefd_cfg_read_and_verify(pcie, img);
 if (res) {
  res = -EIO;
  goto image_free;
 }

 kvaser_pciefd_cfg_read_params(pcie, img);

image_free:
 kfree(img);
 return res;
}
