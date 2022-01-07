
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int ccdc_restore_defaults () ;

__attribute__((used)) static int ccdc_open(struct device *device)
{
 return ccdc_restore_defaults();
}
