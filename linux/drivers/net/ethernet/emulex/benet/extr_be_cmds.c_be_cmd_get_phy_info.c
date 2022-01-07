
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct be_phy_info {int misc_params; int fixed_speeds_supported; int auto_speeds_supported; int interface_type; int phy_type; int hdr; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_dma_mem {int size; int dma; struct be_phy_info* va; } ;
struct be_cmd_req_hdr {int dummy; } ;
struct be_cmd_req_get_phy_info {int misc_params; int fixed_speeds_supported; int auto_speeds_supported; int interface_type; int phy_type; int hdr; } ;
struct TYPE_3__ {int fixed_speeds_supported; int misc_params; void* auto_speeds_supported; void* interface_type; void* phy_type; } ;
struct be_adapter {int mcc_lock; TYPE_2__* pdev; TYPE_1__ phy; } ;
struct TYPE_4__ {int dev; } ;


 scalar_t__ BE2_chip (struct be_adapter*) ;
 int BE_SUPPORTED_SPEED_10GBPS ;
 int BE_SUPPORTED_SPEED_1GBPS ;
 int CMD_SUBSYSTEM_COMMON ;
 int EBUSY ;
 int ENOMEM ;
 int EPERM ;
 int GFP_ATOMIC ;
 int OPCODE_COMMON_GET_PHY_DETAILS ;
 int be_cmd_allowed (struct be_adapter*,int ,int ) ;
 int be_mcc_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (int *,int ,int ,int,struct be_mcc_wrb*,struct be_dma_mem*) ;
 int dev_err (int *,char*) ;
 struct be_phy_info* dma_alloc_coherent (int *,int,int *,int ) ;
 int dma_free_coherent (int *,int,struct be_phy_info*,int ) ;
 void* le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct be_mcc_wrb* wrb_from_mccq (struct be_adapter*) ;

int be_cmd_get_phy_info(struct be_adapter *adapter)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_get_phy_info *req;
 struct be_dma_mem cmd;
 int status;

 if (!be_cmd_allowed(adapter, OPCODE_COMMON_GET_PHY_DETAILS,
       CMD_SUBSYSTEM_COMMON))
  return -EPERM;

 mutex_lock(&adapter->mcc_lock);

 wrb = wrb_from_mccq(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto err;
 }
 cmd.size = sizeof(struct be_cmd_req_get_phy_info);
 cmd.va = dma_alloc_coherent(&adapter->pdev->dev, cmd.size, &cmd.dma,
        GFP_ATOMIC);
 if (!cmd.va) {
  dev_err(&adapter->pdev->dev, "Memory alloc failure\n");
  status = -ENOMEM;
  goto err;
 }

 req = cmd.va;

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
          OPCODE_COMMON_GET_PHY_DETAILS, sizeof(*req),
          wrb, &cmd);

 status = be_mcc_notify_wait(adapter);
 if (!status) {
  struct be_phy_info *resp_phy_info =
    cmd.va + sizeof(struct be_cmd_req_hdr);

  adapter->phy.phy_type = le16_to_cpu(resp_phy_info->phy_type);
  adapter->phy.interface_type =
   le16_to_cpu(resp_phy_info->interface_type);
  adapter->phy.auto_speeds_supported =
   le16_to_cpu(resp_phy_info->auto_speeds_supported);
  adapter->phy.fixed_speeds_supported =
   le16_to_cpu(resp_phy_info->fixed_speeds_supported);
  adapter->phy.misc_params =
   le32_to_cpu(resp_phy_info->misc_params);

  if (BE2_chip(adapter)) {
   adapter->phy.fixed_speeds_supported =
    BE_SUPPORTED_SPEED_10GBPS |
    BE_SUPPORTED_SPEED_1GBPS;
  }
 }
 dma_free_coherent(&adapter->pdev->dev, cmd.size, cmd.va, cmd.dma);
err:
 mutex_unlock(&adapter->mcc_lock);
 return status;
}
