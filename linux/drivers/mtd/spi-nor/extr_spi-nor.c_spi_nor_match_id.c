
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flash_info {scalar_t__ name; } ;


 struct flash_info* spi_nor_ids ;
 int strcmp (char const*,scalar_t__) ;

__attribute__((used)) static const struct flash_info *spi_nor_match_id(const char *name)
{
 const struct flash_info *id = spi_nor_ids;

 while (id->name) {
  if (!strcmp(name, id->name))
   return id;
  id++;
 }
 return ((void*)0);
}
