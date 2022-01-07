
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct firmware {int size; scalar_t__ data; } ;
struct cphy {int * phy_cache; struct adapter* adapter; } ;
struct adapter {TYPE_1__* pdev; } ;
typedef int csum ;
typedef int __be32 ;
struct TYPE_2__ {int dev; } ;


 int CH_ERR (struct adapter*,char*,int,...) ;
 int EINVAL ;
 int be32_to_cpu (int const) ;
 int dev_err (int *,char*,char const*) ;
 char* get_edc_fw_name (int) ;
 scalar_t__ ntohl (int const) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char const*,int *) ;

int t3_get_edc_fw(struct cphy *phy, int edc_idx, int size)
{
 struct adapter *adapter = phy->adapter;
 const struct firmware *fw;
 const char *fw_name;
 u32 csum;
 const __be32 *p;
 u16 *cache = phy->phy_cache;
 int i, ret = -EINVAL;

 fw_name = get_edc_fw_name(edc_idx);
 if (fw_name)
  ret = request_firmware(&fw, fw_name, &adapter->pdev->dev);
 if (ret < 0) {
  dev_err(&adapter->pdev->dev,
   "could not upgrade firmware: unable to load %s\n",
   fw_name);
  return ret;
 }


 if (fw->size > size + 4) {
  CH_ERR(adapter, "firmware image too large %u, expected %d\n",
         (unsigned int)fw->size, size + 4);
  ret = -EINVAL;
 }


 p = (const __be32 *)fw->data;
 for (csum = 0, i = 0; i < fw->size / sizeof(csum); i++)
  csum += ntohl(p[i]);

 if (csum != 0xffffffff) {
  CH_ERR(adapter, "corrupted firmware image, checksum %u\n",
         csum);
  ret = -EINVAL;
 }

 for (i = 0; i < size / 4 ; i++) {
  *cache++ = (be32_to_cpu(p[i]) & 0xffff0000) >> 16;
  *cache++ = be32_to_cpu(p[i]) & 0xffff;
 }

 release_firmware(fw);

 return ret;
}
