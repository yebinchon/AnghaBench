
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_set_drvdata (struct device*,int *) ;
 int el3_device_remove (struct device*) ;

__attribute__((used)) static int el3_isa_remove(struct device *pdev,
        unsigned int ndev)
{
 el3_device_remove(pdev);
 dev_set_drvdata(pdev, ((void*)0));
 return 0;
}
