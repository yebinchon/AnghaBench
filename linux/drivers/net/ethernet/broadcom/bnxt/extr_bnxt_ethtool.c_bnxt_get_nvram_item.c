
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct hwrm_nvm_read_input {void* len; void* offset; int dir_idx; int host_dest_addr; int member_0; } ;
struct bnxt {TYPE_1__* pdev; } ;
typedef int req ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HWRM_CMD_TIMEOUT ;
 int HWRM_NVM_READ ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_nvm_read_input*,int ,int,int) ;
 int cpu_to_le16 (scalar_t__) ;
 void* cpu_to_le32 (scalar_t__) ;
 int cpu_to_le64 (int ) ;
 int * dma_alloc_coherent (int *,scalar_t__,int *,int ) ;
 int dma_free_coherent (int *,scalar_t__,int *,int ) ;
 int hwrm_send_message (struct bnxt*,struct hwrm_nvm_read_input*,int,int ) ;
 int memcpy (int *,int *,scalar_t__) ;
 int netdev_err (struct net_device*,char*,unsigned int) ;
 struct bnxt* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bnxt_get_nvram_item(struct net_device *dev, u32 index, u32 offset,
          u32 length, u8 *data)
{
 struct bnxt *bp = netdev_priv(dev);
 int rc;
 u8 *buf;
 dma_addr_t dma_handle;
 struct hwrm_nvm_read_input req = {0};

 if (!length)
  return -EINVAL;

 buf = dma_alloc_coherent(&bp->pdev->dev, length, &dma_handle,
     GFP_KERNEL);
 if (!buf) {
  netdev_err(dev, "dma_alloc_coherent failure, length = %u\n",
      (unsigned)length);
  return -ENOMEM;
 }
 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_NVM_READ, -1, -1);
 req.host_dest_addr = cpu_to_le64(dma_handle);
 req.dir_idx = cpu_to_le16(index);
 req.offset = cpu_to_le32(offset);
 req.len = cpu_to_le32(length);

 rc = hwrm_send_message(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
 if (rc == 0)
  memcpy(data, buf, length);
 dma_free_coherent(&bp->pdev->dev, length, buf, dma_handle);
 return rc;
}
