
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msi2500_dev {int dev; } ;


 int dev_dbg (int ,char*) ;
 int msi2500_iso_free (struct msi2500_dev*) ;
 int msi2500_iso_stop (struct msi2500_dev*) ;

__attribute__((used)) static void msi2500_isoc_cleanup(struct msi2500_dev *dev)
{
 dev_dbg(dev->dev, "\n");

 msi2500_iso_stop(dev);
 msi2500_iso_free(dev);
}
