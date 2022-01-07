
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_part_parser {int owner; } ;


 int module_put (int ) ;

__attribute__((used)) static inline void mtd_part_parser_put(const struct mtd_part_parser *p)
{
 module_put(p->owner);
}
