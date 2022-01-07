
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct device_node {int dummy; } ;
struct cxl {int psl_timebase_synced; TYPE_2__* native; } ;
struct TYPE_4__ {TYPE_1__* sl_ops; } ;
struct TYPE_3__ {int (* write_timebase_ctrl ) (struct cxl*) ;} ;


 int CXL_PSL_Control ;
 int CXL_PSL_Control_tb ;
 int cxl_p1_write (struct cxl*,int ,int) ;
 int dev_info (int *,char*) ;
 int of_get_property (struct device_node*,char*,int *) ;
 int of_node_get (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* pnv_pci_get_phb_node (struct pci_dev*) ;
 int stub1 (struct cxl*) ;

__attribute__((used)) static void cxl_setup_psl_timebase(struct cxl *adapter, struct pci_dev *dev)
{
 struct device_node *np;

 adapter->psl_timebase_synced = 0;

 if (!(np = pnv_pci_get_phb_node(dev)))
  return;


 of_node_get(np);
 if (! of_get_property(np, "ibm,capp-timebase-sync", ((void*)0))) {
  of_node_put(np);
  dev_info(&dev->dev, "PSL timebase inactive: OPAL support missing\n");
  return;
 }
 of_node_put(np);





 if (adapter->native->sl_ops->write_timebase_ctrl)
  adapter->native->sl_ops->write_timebase_ctrl(adapter);


 cxl_p1_write(adapter, CXL_PSL_Control, 0x0000000000000000);
 cxl_p1_write(adapter, CXL_PSL_Control, CXL_PSL_Control_tb);

 return;
}
