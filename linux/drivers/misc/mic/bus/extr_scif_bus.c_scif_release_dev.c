
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scif_hw_dev {int dummy; } ;
struct device {int dummy; } ;


 struct scif_hw_dev* dev_to_scif (struct device*) ;
 int kfree (struct scif_hw_dev*) ;

__attribute__((used)) static void scif_release_dev(struct device *d)
{
 struct scif_hw_dev *sdev = dev_to_scif(d);

 kfree(sdev);
}
