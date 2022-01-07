
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct qlcnic_fw_dump {int use_pex_dma; int cap_mask; int * dma_buffer; int phys_addr; int * tmpl_hdr; } ;
struct qlcnic_hardware_context {struct qlcnic_fw_dump fw_dump; } ;
struct qlcnic_adapter {TYPE_1__* pdev; struct qlcnic_hardware_context* ahw; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int QLC_PEX_DMA_READ_SIZE ;
 int __qlcnic_fw_cmd_get_minidump_temp (struct qlcnic_adapter*,scalar_t__*,scalar_t__) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,int ) ;
 void* dma_alloc_coherent (int *,int ,int *,int ) ;
 int qlcnic_cache_tmpl_hdr_values (struct qlcnic_adapter*,struct qlcnic_fw_dump*) ;
 int qlcnic_enable_fw_dump_state (struct qlcnic_adapter*) ;
 int qlcnic_fw_flash_get_minidump_temp (struct qlcnic_adapter*,scalar_t__*,scalar_t__) ;
 int qlcnic_fw_get_minidump_temp_size (struct qlcnic_adapter*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ qlcnic_temp_checksum (int *,scalar_t__) ;
 int vfree (int *) ;
 int * vzalloc (scalar_t__) ;

int qlcnic_fw_cmd_get_minidump_temp(struct qlcnic_adapter *adapter)
{
 struct qlcnic_hardware_context *ahw;
 struct qlcnic_fw_dump *fw_dump;
 u32 version, csum, *tmp_buf;
 u8 use_flash_temp = 0;
 u32 temp_size = 0;
 void *temp_buffer;
 int err;

 ahw = adapter->ahw;
 fw_dump = &ahw->fw_dump;
 err = qlcnic_fw_get_minidump_temp_size(adapter, &version, &temp_size,
            &use_flash_temp);
 if (err) {
  dev_err(&adapter->pdev->dev,
   "Can't get template size %d\n", err);
  return -EIO;
 }

 fw_dump->tmpl_hdr = vzalloc(temp_size);
 if (!fw_dump->tmpl_hdr)
  return -ENOMEM;

 tmp_buf = (u32 *)fw_dump->tmpl_hdr;
 if (use_flash_temp)
  goto flash_temp;

 err = __qlcnic_fw_cmd_get_minidump_temp(adapter, tmp_buf, temp_size);

 if (err) {
flash_temp:
  err = qlcnic_fw_flash_get_minidump_temp(adapter, (u8 *)tmp_buf,
       temp_size);

  if (err) {
   dev_err(&adapter->pdev->dev,
    "Failed to get minidump template header %d\n",
    err);
   vfree(fw_dump->tmpl_hdr);
   fw_dump->tmpl_hdr = ((void*)0);
   return -EIO;
  }
 }

 csum = qlcnic_temp_checksum((uint32_t *)tmp_buf, temp_size);

 if (csum) {
  dev_err(&adapter->pdev->dev,
   "Template header checksum validation failed\n");
  vfree(fw_dump->tmpl_hdr);
  fw_dump->tmpl_hdr = ((void*)0);
  return -EIO;
 }

 qlcnic_cache_tmpl_hdr_values(adapter, fw_dump);

 if (fw_dump->use_pex_dma) {
  fw_dump->dma_buffer = ((void*)0);
  temp_buffer = dma_alloc_coherent(&adapter->pdev->dev,
       QLC_PEX_DMA_READ_SIZE,
       &fw_dump->phys_addr,
       GFP_KERNEL);
  if (!temp_buffer)
   fw_dump->use_pex_dma = 0;
  else
   fw_dump->dma_buffer = temp_buffer;
 }


 dev_info(&adapter->pdev->dev,
   "Default minidump capture mask 0x%x\n",
   fw_dump->cap_mask);

 qlcnic_enable_fw_dump_state(adapter);

 return 0;
}
