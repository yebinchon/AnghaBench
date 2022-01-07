
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocxl_fn {int dev; } ;


 int put_device (int *) ;

__attribute__((used)) static void ocxl_fn_put(struct ocxl_fn *fn)
{
 put_device(&fn->dev);
}
