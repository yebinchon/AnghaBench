
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct TYPE_2__ {void* asq_buf_size; void* arq_buf_size; void* num_asq_entries; void* num_arq_entries; } ;
struct iavf_hw {TYPE_1__ aq; } ;
struct iavf_adapter {scalar_t__ state; int flags; struct iavf_hw hw; struct pci_dev* pdev; } ;


 void* IAVF_AQ_LEN ;
 int IAVF_FLAG_PF_COMMS_FAILED ;
 int IAVF_FLAG_RESET_PENDING ;
 void* IAVF_MAX_AQ_BUF_SIZE ;
 int WARN_ON (int) ;
 scalar_t__ __IAVF_INIT_VERSION_CHECK ;
 scalar_t__ __IAVF_STARTUP ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,int) ;
 int iavf_check_reset_complete (struct iavf_hw*) ;
 int iavf_init_adminq (struct iavf_hw*) ;
 int iavf_send_api_ver (struct iavf_adapter*) ;
 int iavf_set_mac_type (struct iavf_hw*) ;
 int iavf_shutdown_adminq (struct iavf_hw*) ;

__attribute__((used)) static int iavf_startup(struct iavf_adapter *adapter)
{
 struct pci_dev *pdev = adapter->pdev;
 struct iavf_hw *hw = &adapter->hw;
 int err;

 WARN_ON(adapter->state != __IAVF_STARTUP);


 adapter->flags &= ~IAVF_FLAG_PF_COMMS_FAILED;
 adapter->flags &= ~IAVF_FLAG_RESET_PENDING;
 err = iavf_set_mac_type(hw);
 if (err) {
  dev_err(&pdev->dev, "Failed to set MAC type (%d)\n", err);
  goto err;
 }

 err = iavf_check_reset_complete(hw);
 if (err) {
  dev_info(&pdev->dev, "Device is still in reset (%d), retrying\n",
    err);
  goto err;
 }
 hw->aq.num_arq_entries = IAVF_AQ_LEN;
 hw->aq.num_asq_entries = IAVF_AQ_LEN;
 hw->aq.arq_buf_size = IAVF_MAX_AQ_BUF_SIZE;
 hw->aq.asq_buf_size = IAVF_MAX_AQ_BUF_SIZE;

 err = iavf_init_adminq(hw);
 if (err) {
  dev_err(&pdev->dev, "Failed to init Admin Queue (%d)\n", err);
  goto err;
 }
 err = iavf_send_api_ver(adapter);
 if (err) {
  dev_err(&pdev->dev, "Unable to send to PF (%d)\n", err);
  iavf_shutdown_adminq(hw);
  goto err;
 }
 adapter->state = __IAVF_INIT_VERSION_CHECK;
err:
 return err;
}
