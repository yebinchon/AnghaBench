
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_partition {int dummy; } ;


 int kfree (struct mtd_partition const*) ;

__attribute__((used)) static void mtd_part_parser_cleanup_default(const struct mtd_partition *pparts,
         int nr_parts)
{
 kfree(pparts);
}
