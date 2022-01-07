
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct genwqe_dev {int dummy; } ;


 int dev_err (int *,char*,int) ;
 struct genwqe_dev* dev_get_drvdata (int *) ;
 int genwqe_health_check_start (struct genwqe_dev*) ;
 int genwqe_start (struct genwqe_dev*) ;

__attribute__((used)) static void genwqe_err_resume(struct pci_dev *pci_dev)
{
 int rc;
 struct genwqe_dev *cd = dev_get_drvdata(&pci_dev->dev);

 rc = genwqe_start(cd);
 if (!rc) {
  rc = genwqe_health_check_start(cd);
  if (rc)
   dev_err(&pci_dev->dev,
    "err: cannot start health checking! (err=%d)\n",
    rc);
 } else {
  dev_err(&pci_dev->dev,
   "err: cannot start card services! (err=%d)\n", rc);
 }
}
