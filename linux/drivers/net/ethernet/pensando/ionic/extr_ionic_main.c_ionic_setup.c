
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ionic {int dummy; } ;


 int ionic_dev_setup (struct ionic*) ;

int ionic_setup(struct ionic *ionic)
{
 int err;

 err = ionic_dev_setup(ionic);
 if (err)
  return err;

 return 0;
}
