
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int pci_funcnum; int * controller_serial_number; int phy_port; } ;
struct mgmt_controller_attrib {TYPE_1__ hba_attribs; int hdr; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_dma_mem {int size; int dma; struct mgmt_controller_attrib* va; } ;
struct be_cmd_resp_hdr {int dummy; } ;
struct be_cmd_resp_cntl_attribs {int dummy; } ;
struct be_cmd_req_cntl_attribs {TYPE_1__ hba_attribs; int hdr; } ;
struct be_adapter {int* serial_num; TYPE_2__* pdev; int mbox_lock; int pf_num; int hba_port_num; } ;
struct TYPE_4__ {int dev; } ;


 scalar_t__ BEx_chip (struct be_adapter*) ;
 int BIT_MASK (int) ;
 int CMD_SUBSYSTEM_COMMON ;
 int CNTL_SERIAL_NUM_WORDS ;
 int EBUSY ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int OPCODE_COMMON_GET_CNTL_ATTRIBUTES ;
 int be_mbox_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (int *,int ,int ,int,struct be_mcc_wrb*,struct be_dma_mem*) ;
 int dev_err (int *,char*) ;
 struct mgmt_controller_attrib* dma_alloc_coherent (int *,int,int *,int ) ;
 int dma_free_coherent (int *,int,struct mgmt_controller_attrib*,int ) ;
 int le32_to_cpu (int ) ;
 int max (int,int) ;
 int memset (struct be_dma_mem*,int ,int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 struct be_mcc_wrb* wrb_from_mbox (struct be_adapter*) ;

int be_cmd_get_cntl_attributes(struct be_adapter *adapter)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_cntl_attribs *req;
 struct be_cmd_resp_cntl_attribs *resp;
 int status, i;
 int payload_len = max(sizeof(*req), sizeof(*resp));
 struct mgmt_controller_attrib *attribs;
 struct be_dma_mem attribs_cmd;
 u32 *serial_num;

 if (mutex_lock_interruptible(&adapter->mbox_lock))
  return -1;

 memset(&attribs_cmd, 0, sizeof(struct be_dma_mem));
 attribs_cmd.size = sizeof(struct be_cmd_resp_cntl_attribs);
 attribs_cmd.va = dma_alloc_coherent(&adapter->pdev->dev,
         attribs_cmd.size,
         &attribs_cmd.dma, GFP_ATOMIC);
 if (!attribs_cmd.va) {
  dev_err(&adapter->pdev->dev, "Memory allocation failure\n");
  status = -ENOMEM;
  goto err;
 }

 wrb = wrb_from_mbox(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto err;
 }
 req = attribs_cmd.va;

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
          OPCODE_COMMON_GET_CNTL_ATTRIBUTES, payload_len,
          wrb, &attribs_cmd);

 status = be_mbox_notify_wait(adapter);
 if (!status) {
  attribs = attribs_cmd.va + sizeof(struct be_cmd_resp_hdr);
  adapter->hba_port_num = attribs->hba_attribs.phy_port;
  serial_num = attribs->hba_attribs.controller_serial_number;
  for (i = 0; i < CNTL_SERIAL_NUM_WORDS; i++)
   adapter->serial_num[i] = le32_to_cpu(serial_num[i]) &
    (BIT_MASK(16) - 1);



  if (BEx_chip(adapter))
   adapter->pf_num = attribs->hba_attribs.pci_funcnum;
 }

err:
 mutex_unlock(&adapter->mbox_lock);
 if (attribs_cmd.va)
  dma_free_coherent(&adapter->pdev->dev, attribs_cmd.size,
      attribs_cmd.va, attribs_cmd.dma);
 return status;
}
