
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orinoco_private {struct device* dev; } ;
struct fw_info {int sta_fw; int pri_fw; } ;
struct firmware {scalar_t__ size; scalar_t__ data; } ;
struct device {int dummy; } ;


 int ENOENT ;
 int dev_err (struct device*,char*,...) ;
 struct firmware* orinoco_cached_fw_get (struct orinoco_private*,int) ;
 int release_firmware (struct firmware const*) ;
 scalar_t__ request_firmware (struct firmware const**,int ,struct device*) ;
 int symbol_dl_image (struct orinoco_private*,struct fw_info const*,scalar_t__,scalar_t__,int) ;

__attribute__((used)) static int
symbol_dl_firmware(struct orinoco_private *priv,
     const struct fw_info *fw)
{
 struct device *dev = priv->dev;
 int ret;
 const struct firmware *fw_entry;

 if (!orinoco_cached_fw_get(priv, 1)) {
  if (request_firmware(&fw_entry, fw->pri_fw, priv->dev) != 0) {
   dev_err(dev, "Cannot find firmware: %s\n", fw->pri_fw);
   return -ENOENT;
  }
 } else
  fw_entry = orinoco_cached_fw_get(priv, 1);


 ret = symbol_dl_image(priv, fw, fw_entry->data,
         fw_entry->data + fw_entry->size, 0);

 if (!orinoco_cached_fw_get(priv, 1))
  release_firmware(fw_entry);
 if (ret) {
  dev_err(dev, "Primary firmware download failed\n");
  return ret;
 }

 if (!orinoco_cached_fw_get(priv, 0)) {
  if (request_firmware(&fw_entry, fw->sta_fw, priv->dev) != 0) {
   dev_err(dev, "Cannot find firmware: %s\n", fw->sta_fw);
   return -ENOENT;
  }
 } else
  fw_entry = orinoco_cached_fw_get(priv, 0);


 ret = symbol_dl_image(priv, fw, fw_entry->data,
         fw_entry->data + fw_entry->size, 1);
 if (!orinoco_cached_fw_get(priv, 0))
  release_firmware(fw_entry);
 if (ret)
  dev_err(dev, "Secondary firmware download failed\n");

 return ret;
}
