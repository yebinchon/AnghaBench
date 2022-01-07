
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pismo_mem {int width; } ;
struct pismo_data {scalar_t__ vpp; } ;
struct physmap_flash_data {int set_vpp; int width; } ;
typedef int data ;


 int pismo_add_device (struct pismo_data*,int,struct pismo_mem*,char*,struct physmap_flash_data*,int) ;
 int pismo_set_vpp ;

__attribute__((used)) static int pismo_add_nor(struct pismo_data *pismo, int i,
    struct pismo_mem *region)
{
 struct physmap_flash_data data = {
  .width = region->width,
 };

 if (pismo->vpp)
  data.set_vpp = pismo_set_vpp;

 return pismo_add_device(pismo, i, region, "physmap-flash",
  &data, sizeof(data));
}
