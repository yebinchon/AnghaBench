
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct cxl {TYPE_1__ dev; } ;
typedef int ssize_t ;


 int pci_read_vpd (int ,int ,size_t,void*) ;
 int to_pci_dev (int ) ;

ssize_t cxl_pci_read_adapter_vpd(struct cxl *adapter, void *buf, size_t len)
{
 return pci_read_vpd(to_pci_dev(adapter->dev.parent), 0, len, buf);
}
