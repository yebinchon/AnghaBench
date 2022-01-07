
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tifm_adapter {int dev; } ;


 int put_device (int *) ;

void tifm_free_adapter(struct tifm_adapter *fm)
{
 put_device(&fm->dev);
}
