
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_flctl {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*,char const*) ;

__attribute__((used)) static void timeout_error(struct sh_flctl *flctl, const char *str)
{
 dev_err(&flctl->pdev->dev, "Timeout occurred in %s\n", str);
}
