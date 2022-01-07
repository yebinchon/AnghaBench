
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platdata_mtd_ram {int bankwidth; } ;
struct pismo_mem {int width; } ;
struct pismo_data {int dummy; } ;
typedef int data ;


 int pismo_add_device (struct pismo_data*,int,struct pismo_mem*,char*,struct platdata_mtd_ram*,int) ;

__attribute__((used)) static int pismo_add_sram(struct pismo_data *pismo, int i,
     struct pismo_mem *region)
{
 struct platdata_mtd_ram data = {
  .bankwidth = region->width,
 };

 return pismo_add_device(pismo, i, region, "mtd-ram",
  &data, sizeof(data));
}
