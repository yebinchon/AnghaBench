
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct adapter {int dummy; } ;


 int A_PCIE_PEX_ERR ;
 int CH_ALERT (struct adapter*,char*,int ) ;
 struct adapter* pci_get_drvdata (struct pci_dev*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int t3_read_reg (struct adapter*,int ) ;
 int t3_resume_ports (struct adapter*) ;

__attribute__((used)) static void t3_io_resume(struct pci_dev *pdev)
{
 struct adapter *adapter = pci_get_drvdata(pdev);

 CH_ALERT(adapter, "adapter recovering, PEX ERR 0x%x\n",
   t3_read_reg(adapter, A_PCIE_PEX_ERR));

 rtnl_lock();
 t3_resume_ports(adapter);
 rtnl_unlock();
}
