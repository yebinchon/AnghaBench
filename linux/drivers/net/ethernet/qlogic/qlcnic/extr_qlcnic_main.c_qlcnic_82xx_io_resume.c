
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qlcnic_adapter {int state; } ;
struct pci_dev {int dummy; } ;


 int FW_POLL_DELAY ;
 int QLCNIC_CRB_DEV_STATE ;
 scalar_t__ QLCNIC_DEV_READY ;
 scalar_t__ QLC_SHARED_REG_RD32 (struct qlcnic_adapter*,int ) ;
 int __QLCNIC_AER ;
 struct qlcnic_adapter* pci_get_drvdata (struct pci_dev*) ;
 int qlcnic_fw_poll_work ;
 int qlcnic_schedule_work (struct qlcnic_adapter*,int ,int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void qlcnic_82xx_io_resume(struct pci_dev *pdev)
{
 u32 state;
 struct qlcnic_adapter *adapter = pci_get_drvdata(pdev);

 state = QLC_SHARED_REG_RD32(adapter, QLCNIC_CRB_DEV_STATE);
 if (state == QLCNIC_DEV_READY && test_and_clear_bit(__QLCNIC_AER,
           &adapter->state))
  qlcnic_schedule_work(adapter, qlcnic_fw_poll_work,
         FW_POLL_DELAY);
}
