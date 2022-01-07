
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int ccdc_restore_context () ;

__attribute__((used)) static int dm644x_ccdc_resume(struct device *dev)
{

 ccdc_restore_context();

 return 0;
}
