
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_info {unsigned int prod_num; } ;


 int ARRAY_SIZE (struct mv88e6xxx_info const*) ;
 struct mv88e6xxx_info const* mv88e6xxx_table ;

__attribute__((used)) static const struct mv88e6xxx_info *mv88e6xxx_lookup_info(unsigned int prod_num)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(mv88e6xxx_table); ++i)
  if (mv88e6xxx_table[i].prod_num == prod_num)
   return &mv88e6xxx_table[i];

 return ((void*)0);
}
