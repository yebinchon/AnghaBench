
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocxl_fn {int dev; } ;


 int * get_device (int *) ;

__attribute__((used)) static struct ocxl_fn *ocxl_fn_get(struct ocxl_fn *fn)
{
 return (get_device(&fn->dev) == ((void*)0)) ? ((void*)0) : fn;
}
