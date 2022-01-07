
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_get_drvdata (struct device*) ;
 int fmr2_remove (int ) ;

__attribute__((used)) static int fmr2_isa_remove(struct device *pdev, unsigned int ndev)
{
 fmr2_remove(dev_get_drvdata(pdev));

 return 0;
}
