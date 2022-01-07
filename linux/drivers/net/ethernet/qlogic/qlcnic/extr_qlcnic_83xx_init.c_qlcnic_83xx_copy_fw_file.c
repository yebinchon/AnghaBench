
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct qlcnic_adapter {TYPE_1__* pdev; TYPE_2__* ahw; } ;
struct qlc_83xx_fw_info {struct firmware* fw; } ;
struct firmware {int size; scalar_t__ data; } ;
typedef int __le32 ;
struct TYPE_4__ {struct qlc_83xx_fw_info* fw_info; } ;
struct TYPE_3__ {int dev; } ;


 int EIO ;
 int ENOMEM ;
 int QLCNIC_FW_IMAGE_ADDR ;
 scalar_t__ QLCRDX (TYPE_2__*,int ) ;
 scalar_t__ __le32_to_cpu (int ) ;
 int dev_err (int *,char*) ;
 int qlcnic_ms_mem_write128 (struct qlcnic_adapter*,scalar_t__,scalar_t__*,int) ;
 int release_firmware (struct firmware const*) ;
 int vfree (scalar_t__*) ;
 scalar_t__* vzalloc (int) ;

__attribute__((used)) static int qlcnic_83xx_copy_fw_file(struct qlcnic_adapter *adapter)
{
 struct qlc_83xx_fw_info *fw_info = adapter->ahw->fw_info;
 const struct firmware *fw = fw_info->fw;
 u32 dest, *p_cache, *temp;
 int i, ret = -EIO;
 __le32 *temp_le;
 u8 data[16];
 size_t size;
 u64 addr;

 temp = vzalloc(fw->size);
 if (!temp) {
  release_firmware(fw);
  fw_info->fw = ((void*)0);
  return -ENOMEM;
 }

 temp_le = (__le32 *)fw->data;




 for (i = 0; i < fw->size / sizeof(u32); i++)
  temp[i] = __le32_to_cpu(temp_le[i]);

 dest = QLCRDX(adapter->ahw, QLCNIC_FW_IMAGE_ADDR);
 size = (fw->size & ~0xF);
 p_cache = temp;
 addr = (u64)dest;

 ret = qlcnic_ms_mem_write128(adapter, addr,
         p_cache, size / 16);
 if (ret) {
  dev_err(&adapter->pdev->dev, "MS memory write failed\n");
  goto exit;
 }


 if (fw->size & 0xF) {
  addr = dest + size;
  for (i = 0; i < (fw->size & 0xF); i++)
   data[i] = ((u8 *)temp)[size + i];
  for (; i < 16; i++)
   data[i] = 0;
  ret = qlcnic_ms_mem_write128(adapter, addr,
          (u32 *)data, 1);
  if (ret) {
   dev_err(&adapter->pdev->dev,
    "MS memory write failed\n");
   goto exit;
  }
 }

exit:
 release_firmware(fw);
 fw_info->fw = ((void*)0);
 vfree(temp);

 return ret;
}
