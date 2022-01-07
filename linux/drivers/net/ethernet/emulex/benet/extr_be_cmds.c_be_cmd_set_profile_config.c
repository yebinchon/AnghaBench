
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
struct be_mcc_wrb {int member_0; } ;
struct be_dma_mem {int size; int dma; struct be_cmd_req_set_profile_config* va; } ;
struct TYPE_4__ {void* domain; void* version; } ;
struct be_cmd_req_set_profile_config {int desc; int desc_count; TYPE_2__ hdr; } ;
struct be_adapter {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int CMD_SUBSYSTEM_COMMON ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int OPCODE_COMMON_SET_PROFILE_CONFIG ;
 int be_cmd_notify_wait (struct be_adapter*,struct be_mcc_wrb*) ;
 int be_wrb_cmd_hdr_prepare (TYPE_2__*,int ,int ,int,struct be_mcc_wrb*,struct be_dma_mem*) ;
 int cpu_to_le32 (int) ;
 struct be_cmd_req_set_profile_config* dma_alloc_coherent (int *,int,int *,int ) ;
 int dma_free_coherent (int *,int,struct be_cmd_req_set_profile_config*,int ) ;
 int memcpy (int ,void*,int) ;
 int memset (struct be_dma_mem*,int ,int) ;

__attribute__((used)) static int be_cmd_set_profile_config(struct be_adapter *adapter, void *desc,
         int size, int count, u8 version, u8 domain)
{
 struct be_cmd_req_set_profile_config *req;
 struct be_mcc_wrb wrb = {0};
 struct be_dma_mem cmd;
 int status;

 memset(&cmd, 0, sizeof(struct be_dma_mem));
 cmd.size = sizeof(struct be_cmd_req_set_profile_config);
 cmd.va = dma_alloc_coherent(&adapter->pdev->dev, cmd.size, &cmd.dma,
        GFP_ATOMIC);
 if (!cmd.va)
  return -ENOMEM;

 req = cmd.va;
 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
          OPCODE_COMMON_SET_PROFILE_CONFIG, cmd.size,
          &wrb, &cmd);
 req->hdr.version = version;
 req->hdr.domain = domain;
 req->desc_count = cpu_to_le32(count);
 memcpy(req->desc, desc, size);

 status = be_cmd_notify_wait(adapter, &wrb);

 if (cmd.va)
  dma_free_coherent(&adapter->pdev->dev, cmd.size, cmd.va,
      cmd.dma);
 return status;
}
