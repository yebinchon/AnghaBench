
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_part_parser {int list; int * cleanup; struct module* owner; } ;
struct module {int dummy; } ;


 int list_add (int *,int *) ;
 int mtd_part_parser_cleanup_default ;
 int part_parser_lock ;
 int part_parsers ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int __register_mtd_parser(struct mtd_part_parser *p, struct module *owner)
{
 p->owner = owner;

 if (!p->cleanup)
  p->cleanup = &mtd_part_parser_cleanup_default;

 spin_lock(&part_parser_lock);
 list_add(&p->list, &part_parsers);
 spin_unlock(&part_parser_lock);

 return 0;
}
