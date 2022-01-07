
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct amd76xrom_window {int dummy; } ;


 int amd76xrom_cleanup (struct amd76xrom_window*) ;
 struct amd76xrom_window amd76xrom_window ;

__attribute__((used)) static void amd76xrom_remove_one(struct pci_dev *pdev)
{
 struct amd76xrom_window *window = &amd76xrom_window;

 amd76xrom_cleanup(window);
}
