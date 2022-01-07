
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct hwrm_nvm_write_input {int host_src_addr; int dir_data_length; void* dir_attr; void* dir_ext; void* dir_ordinal; void* dir_type; int member_0; } ;
struct bnxt {TYPE_1__* pdev; } ;
typedef int req ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int EACCES ;
 int ENOMEM ;
 int FLASH_NVRAM_TIMEOUT ;
 int GFP_KERNEL ;
 int HWRM_NVM_WRITE ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_nvm_write_input*,int ,int,int) ;
 int bnxt_print_admin_err (struct bnxt*) ;
 void* cpu_to_le16 (int ) ;
 int cpu_to_le32 (size_t) ;
 int cpu_to_le64 (int ) ;
 int * dma_alloc_coherent (int *,size_t,int *,int ) ;
 int dma_free_coherent (int *,size_t,int *,int ) ;
 int hwrm_send_message (struct bnxt*,struct hwrm_nvm_write_input*,int,int ) ;
 int memcpy (int *,int const*,size_t) ;
 int netdev_err (struct net_device*,char*,unsigned int) ;
 struct bnxt* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bnxt_flash_nvram(struct net_device *dev,
       u16 dir_type,
       u16 dir_ordinal,
       u16 dir_ext,
       u16 dir_attr,
       const u8 *data,
       size_t data_len)
{
 struct bnxt *bp = netdev_priv(dev);
 int rc;
 struct hwrm_nvm_write_input req = {0};
 dma_addr_t dma_handle;
 u8 *kmem;

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_NVM_WRITE, -1, -1);

 req.dir_type = cpu_to_le16(dir_type);
 req.dir_ordinal = cpu_to_le16(dir_ordinal);
 req.dir_ext = cpu_to_le16(dir_ext);
 req.dir_attr = cpu_to_le16(dir_attr);
 req.dir_data_length = cpu_to_le32(data_len);

 kmem = dma_alloc_coherent(&bp->pdev->dev, data_len, &dma_handle,
      GFP_KERNEL);
 if (!kmem) {
  netdev_err(dev, "dma_alloc_coherent failure, length = %u\n",
      (unsigned)data_len);
  return -ENOMEM;
 }
 memcpy(kmem, data, data_len);
 req.host_src_addr = cpu_to_le64(dma_handle);

 rc = hwrm_send_message(bp, &req, sizeof(req), FLASH_NVRAM_TIMEOUT);
 dma_free_coherent(&bp->pdev->dev, data_len, kmem, dma_handle);

 if (rc == -EACCES)
  bnxt_print_admin_err(bp);
 return rc;
}
