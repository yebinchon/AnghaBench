
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; } ;
struct qlcnic_adapter {TYPE_2__* pdev; } ;
typedef int dma_addr_t ;
typedef int __le32 ;
struct TYPE_4__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int LSD (int ) ;
 int MSD (int ) ;
 int QLCNIC_CMD_GET_TEMP_HDR ;
 int QLCNIC_RCODE_SUCCESS ;
 int __le32_to_cpu (int ) ;
 void* dma_alloc_coherent (int *,int,int *,int ) ;
 int dma_free_coherent (int *,int,void*,int ) ;
 scalar_t__ qlcnic_alloc_mbx_args (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int ) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;
 int qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;

__attribute__((used)) static int __qlcnic_fw_cmd_get_minidump_temp(struct qlcnic_adapter *adapter,
          u32 *buffer, u32 temp_size)
{
 int err = 0, i;
 void *tmp_addr;
 __le32 *tmp_buf;
 struct qlcnic_cmd_args cmd;
 dma_addr_t tmp_addr_t = 0;

 tmp_addr = dma_alloc_coherent(&adapter->pdev->dev, temp_size,
          &tmp_addr_t, GFP_KERNEL);
 if (!tmp_addr)
  return -ENOMEM;

 if (qlcnic_alloc_mbx_args(&cmd, adapter, QLCNIC_CMD_GET_TEMP_HDR)) {
  err = -ENOMEM;
  goto free_mem;
 }

 cmd.req.arg[1] = LSD(tmp_addr_t);
 cmd.req.arg[2] = MSD(tmp_addr_t);
 cmd.req.arg[3] = temp_size;
 err = qlcnic_issue_cmd(adapter, &cmd);

 tmp_buf = tmp_addr;
 if (err == QLCNIC_RCODE_SUCCESS) {
  for (i = 0; i < temp_size / sizeof(u32); i++)
   *buffer++ = __le32_to_cpu(*tmp_buf++);
 }

 qlcnic_free_mbx_args(&cmd);

free_mem:
 dma_free_coherent(&adapter->pdev->dev, temp_size, tmp_addr, tmp_addr_t);

 return err;
}
