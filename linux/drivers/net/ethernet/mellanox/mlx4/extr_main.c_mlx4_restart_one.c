
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int mlx4_restart_one_down (struct pci_dev*) ;
 int mlx4_restart_one_up (struct pci_dev*,int,int *) ;

int mlx4_restart_one(struct pci_dev *pdev)
{
 mlx4_restart_one_down(pdev);
 return mlx4_restart_one_up(pdev, 0, ((void*)0));
}
