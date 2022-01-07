
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int mlx4_unload_one (struct pci_dev*) ;

__attribute__((used)) static void mlx4_restart_one_down(struct pci_dev *pdev)
{
 mlx4_unload_one(pdev);
}
