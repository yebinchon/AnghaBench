
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int flags; int pdev_dev; } ;


 int CXGB4_USING_MSI ;
 int CXGB4_USING_MSIX ;
 int dev_info (int ,char*,char*,char*,char*) ;
 scalar_t__ is_offload (struct adapter*) ;
 int t4_dump_version_info (struct adapter*) ;

__attribute__((used)) static void print_adapter_info(struct adapter *adapter)
{

 t4_dump_version_info(adapter);


 dev_info(adapter->pdev_dev, "Configuration: %sNIC %s, %s capable\n",
   is_offload(adapter) ? "R" : "",
   ((adapter->flags & CXGB4_USING_MSIX) ? "MSI-X" :
    (adapter->flags & CXGB4_USING_MSI) ? "MSI" : ""),
   is_offload(adapter) ? "Offload" : "non-Offload");
}
