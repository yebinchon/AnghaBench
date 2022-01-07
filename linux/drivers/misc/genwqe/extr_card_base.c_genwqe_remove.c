
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct genwqe_dev {int dummy; } ;


 struct genwqe_dev* dev_get_drvdata (int *) ;
 int genwqe_dev_free (struct genwqe_dev*) ;
 int genwqe_health_check_stop (struct genwqe_dev*) ;
 int genwqe_pci_remove (struct genwqe_dev*) ;
 int genwqe_stop (struct genwqe_dev*) ;

__attribute__((used)) static void genwqe_remove(struct pci_dev *pci_dev)
{
 struct genwqe_dev *cd = dev_get_drvdata(&pci_dev->dev);

 genwqe_health_check_stop(cd);






 genwqe_stop(cd);
 genwqe_pci_remove(cd);
 genwqe_dev_free(cd);
}
