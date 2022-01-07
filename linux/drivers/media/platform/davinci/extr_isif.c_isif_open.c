
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int isif_restore_defaults () ;

__attribute__((used)) static int isif_open(struct device *device)
{
 isif_restore_defaults();
 return 0;
}
