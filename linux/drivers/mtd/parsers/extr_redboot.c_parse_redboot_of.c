
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtd_info {int dummy; } ;
struct device_node {int dummy; } ;


 int directory ;
 struct device_node* mtd_get_of_node (struct mtd_info*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;

__attribute__((used)) static void parse_redboot_of(struct mtd_info *master)
{
 struct device_node *np;
 u32 dirblock;
 int ret;

 np = mtd_get_of_node(master);
 if (!np)
  return;

 ret = of_property_read_u32(np, "fis-index-block", &dirblock);
 if (ret)
  return;





 directory = dirblock;
}
