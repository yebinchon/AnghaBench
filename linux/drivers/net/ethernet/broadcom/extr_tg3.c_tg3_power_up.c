
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {int dev; int pdev; } ;


 int PCI_D0 ;
 int netdev_err (int ,char*) ;
 int pci_set_power_state (int ,int ) ;
 int tg3_enable_register_access (struct tg3*) ;
 int tg3_pwrsrc_switch_to_vmain (struct tg3*) ;

__attribute__((used)) static int tg3_power_up(struct tg3 *tp)
{
 int err;

 tg3_enable_register_access(tp);

 err = pci_set_power_state(tp->pdev, PCI_D0);
 if (!err) {

  tg3_pwrsrc_switch_to_vmain(tp);
 } else {
  netdev_err(tp->dev, "Transition to D0 failed\n");
 }

 return err;
}
