
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int ccdc_enable (int ) ;
 int ccdc_save_context () ;

__attribute__((used)) static int dm644x_ccdc_suspend(struct device *dev)
{

 ccdc_save_context();

 ccdc_enable(0);

 return 0;
}
