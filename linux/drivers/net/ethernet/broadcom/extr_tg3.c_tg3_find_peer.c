
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {struct pci_dev* pdev; } ;
struct pci_dev {int devfn; int bus; } ;


 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_slot (int ,unsigned int) ;

__attribute__((used)) static struct pci_dev *tg3_find_peer(struct tg3 *tp)
{
 struct pci_dev *peer;
 unsigned int func, devnr = tp->pdev->devfn & ~7;

 for (func = 0; func < 8; func++) {
  peer = pci_get_slot(tp->pdev->bus, devnr | func);
  if (peer && peer != tp->pdev)
   break;
  pci_dev_put(peer);
 }



 if (!peer) {
  peer = tp->pdev;
  return peer;
 }





 pci_dev_put(peer);

 return peer;
}
