
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct be_mcc_wrb {int dummy; } ;
struct be_dma_mem {int size; int dma; struct be_cmd_req_acpi_wol_magic_config_v1* va; } ;
struct be_cmd_resp_acpi_wol_magic_config_v1 {int wol_settings; int magic_mac; } ;
struct TYPE_4__ {int version; } ;
struct be_cmd_req_acpi_wol_magic_config_v1 {int query_options; TYPE_2__ hdr; } ;
struct be_adapter {int wol_cap; int wol_en; TYPE_1__* pdev; int mbox_lock; } ;
struct TYPE_3__ {int dev; } ;


 int BE_GET_WOL_CAP ;
 int BE_WOL_CAP ;
 int CMD_SUBSYSTEM_ETH ;
 int EBUSY ;
 int ENOMEM ;
 int EPERM ;
 int GFP_ATOMIC ;
 int OPCODE_ETH_ACPI_WOL_MAGIC_CONFIG ;
 int be_cmd_allowed (struct be_adapter*,int ,int ) ;
 scalar_t__ be_is_wol_excluded (struct be_adapter*) ;
 int be_mbox_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (TYPE_2__*,int ,int ,int,struct be_mcc_wrb*,struct be_dma_mem*) ;
 int dev_err (int *,char*) ;
 struct be_cmd_req_acpi_wol_magic_config_v1* dma_alloc_coherent (int *,int,int *,int ) ;
 int dma_free_coherent (int *,int,struct be_cmd_req_acpi_wol_magic_config_v1*,int ) ;
 int is_zero_ether_addr (int ) ;
 int memset (struct be_dma_mem*,int ,int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 struct be_mcc_wrb* wrb_from_mbox (struct be_adapter*) ;

int be_cmd_get_acpi_wol_cap(struct be_adapter *adapter)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_acpi_wol_magic_config_v1 *req;
 int status = 0;
 struct be_dma_mem cmd;

 if (!be_cmd_allowed(adapter, OPCODE_ETH_ACPI_WOL_MAGIC_CONFIG,
       CMD_SUBSYSTEM_ETH))
  return -EPERM;

 if (be_is_wol_excluded(adapter))
  return status;

 if (mutex_lock_interruptible(&adapter->mbox_lock))
  return -1;

 memset(&cmd, 0, sizeof(struct be_dma_mem));
 cmd.size = sizeof(struct be_cmd_resp_acpi_wol_magic_config_v1);
 cmd.va = dma_alloc_coherent(&adapter->pdev->dev, cmd.size, &cmd.dma,
        GFP_ATOMIC);
 if (!cmd.va) {
  dev_err(&adapter->pdev->dev, "Memory allocation failure\n");
  status = -ENOMEM;
  goto err;
 }

 wrb = wrb_from_mbox(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto err;
 }

 req = cmd.va;

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_ETH,
          OPCODE_ETH_ACPI_WOL_MAGIC_CONFIG,
          sizeof(*req), wrb, &cmd);

 req->hdr.version = 1;
 req->query_options = BE_GET_WOL_CAP;

 status = be_mbox_notify_wait(adapter);
 if (!status) {
  struct be_cmd_resp_acpi_wol_magic_config_v1 *resp;

  resp = (struct be_cmd_resp_acpi_wol_magic_config_v1 *)cmd.va;

  adapter->wol_cap = resp->wol_settings;


  if (adapter->wol_cap & BE_WOL_CAP &&
      !is_zero_ether_addr(resp->magic_mac))
   adapter->wol_en = 1;
 }
err:
 mutex_unlock(&adapter->mbox_lock);
 if (cmd.va)
  dma_free_coherent(&adapter->pdev->dev, cmd.size, cmd.va,
      cmd.dma);
 return status;

}
