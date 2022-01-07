
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u16 ;
struct pci_dev {int dev; } ;
struct hinic_hwdev {struct hinic_hwif* hwif; } ;
struct hinic_pfhwdev {struct hinic_nic_cb* nic_cb; struct hinic_hwdev hwdev; } ;
struct hinic_nic_cb {int cb_state; int handle; int (* handler ) (int ,void*,int ,void*,int *) ;} ;
struct hinic_hwif {struct pci_dev* pdev; } ;
typedef enum hinic_cb_state { ____Placeholder_hinic_cb_state } hinic_cb_state ;


 int HINIC_CB_ENABLED ;
 int HINIC_CB_RUNNING ;
 size_t HINIC_MGMT_MSG_CMD_BASE ;
 size_t HINIC_MGMT_MSG_CMD_MAX ;
 int cmpxchg (int*,int,int) ;
 int dev_err (int *,char*,size_t) ;
 int stub1 (int ,void*,int ,void*,int *) ;

__attribute__((used)) static void nic_mgmt_msg_handler(void *handle, u8 cmd, void *buf_in,
     u16 in_size, void *buf_out, u16 *out_size)
{
 struct hinic_pfhwdev *pfhwdev = handle;
 enum hinic_cb_state cb_state;
 struct hinic_nic_cb *nic_cb;
 struct hinic_hwdev *hwdev;
 struct hinic_hwif *hwif;
 struct pci_dev *pdev;
 u8 cmd_cb;

 hwdev = &pfhwdev->hwdev;
 hwif = hwdev->hwif;
 pdev = hwif->pdev;

 if ((cmd < HINIC_MGMT_MSG_CMD_BASE) ||
     (cmd >= HINIC_MGMT_MSG_CMD_MAX)) {
  dev_err(&pdev->dev, "unknown L2NIC event, cmd = %d\n", cmd);
  return;
 }

 cmd_cb = cmd - HINIC_MGMT_MSG_CMD_BASE;

 nic_cb = &pfhwdev->nic_cb[cmd_cb];

 cb_state = cmpxchg(&nic_cb->cb_state,
      HINIC_CB_ENABLED,
      HINIC_CB_ENABLED | HINIC_CB_RUNNING);

 if ((cb_state == HINIC_CB_ENABLED) && (nic_cb->handler))
  nic_cb->handler(nic_cb->handle, buf_in,
    in_size, buf_out, out_size);
 else
  dev_err(&pdev->dev, "Unhandled NIC Event %d\n", cmd);

 nic_cb->cb_state &= ~HINIC_CB_RUNNING;
}
