
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int free_adapter (int ) ;
 int to_cxl_adapter (struct device*) ;

__attribute__((used)) static void release_adapter(struct device *dev)
{
 free_adapter(to_cxl_adapter(dev));
}
