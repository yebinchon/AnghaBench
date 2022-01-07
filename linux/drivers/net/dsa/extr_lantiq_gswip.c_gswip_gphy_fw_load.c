
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gswip_priv {int rcu_regmap; struct device* dev; } ;
struct gswip_gphy_fw {int reset; int fw_addr_offset; int fw_name; int clk_gate; } ;
struct firmware {size_t size; int data; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int ALIGN (int ,size_t) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* PTR_ALIGN (void*,size_t) ;
 size_t XRX200_GPHY_FW_ALIGN ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*,...) ;
 void* dmam_alloc_coherent (struct device*,size_t,int *,int ) ;
 int memcpy (void*,int ,size_t) ;
 int regmap_write (int ,int ,int ) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,int ,struct device*) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;

__attribute__((used)) static int gswip_gphy_fw_load(struct gswip_priv *priv, struct gswip_gphy_fw *gphy_fw)
{
 struct device *dev = priv->dev;
 const struct firmware *fw;
 void *fw_addr;
 dma_addr_t dma_addr;
 dma_addr_t dev_addr;
 size_t size;
 int ret;

 ret = clk_prepare_enable(gphy_fw->clk_gate);
 if (ret)
  return ret;

 reset_control_assert(gphy_fw->reset);

 ret = request_firmware(&fw, gphy_fw->fw_name, dev);
 if (ret) {
  dev_err(dev, "failed to load firmware: %s, error: %i\n",
   gphy_fw->fw_name, ret);
  return ret;
 }




 size = fw->size + XRX200_GPHY_FW_ALIGN;

 fw_addr = dmam_alloc_coherent(dev, size, &dma_addr, GFP_KERNEL);
 if (fw_addr) {
  fw_addr = PTR_ALIGN(fw_addr, XRX200_GPHY_FW_ALIGN);
  dev_addr = ALIGN(dma_addr, XRX200_GPHY_FW_ALIGN);
  memcpy(fw_addr, fw->data, fw->size);
 } else {
  dev_err(dev, "failed to alloc firmware memory\n");
  release_firmware(fw);
  return -ENOMEM;
 }

 release_firmware(fw);

 ret = regmap_write(priv->rcu_regmap, gphy_fw->fw_addr_offset, dev_addr);
 if (ret)
  return ret;

 reset_control_deassert(gphy_fw->reset);

 return ret;
}
