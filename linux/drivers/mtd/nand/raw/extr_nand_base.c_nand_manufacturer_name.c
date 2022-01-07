
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_manufacturer {char const* name; } ;



__attribute__((used)) static const char *
nand_manufacturer_name(const struct nand_manufacturer *manufacturer)
{
 return manufacturer ? manufacturer->name : "Unknown";
}
