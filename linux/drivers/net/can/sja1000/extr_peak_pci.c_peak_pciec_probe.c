
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static inline int peak_pciec_probe(struct pci_dev *pdev, struct net_device *dev)
{
 return -ENODEV;
}
