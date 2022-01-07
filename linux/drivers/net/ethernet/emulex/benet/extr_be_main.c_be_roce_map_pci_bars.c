
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int total_size; int io_addr; } ;
struct be_adapter {int pdev; TYPE_1__ roce_db; } ;


 int db_bar (struct be_adapter*) ;
 int pci_resource_len (int ,int ) ;
 int pci_resource_start (int ,int ) ;
 scalar_t__ skyhawk_chip (struct be_adapter*) ;

__attribute__((used)) static int be_roce_map_pci_bars(struct be_adapter *adapter)
{
 if (skyhawk_chip(adapter)) {
  adapter->roce_db.size = 4096;
  adapter->roce_db.io_addr = pci_resource_start(adapter->pdev,
             db_bar(adapter));
  adapter->roce_db.total_size = pci_resource_len(adapter->pdev,
              db_bar(adapter));
 }
 return 0;
}
