
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct mtd_part* name; } ;
struct mtd_part {TYPE_1__ mtd; } ;


 int kfree (struct mtd_part*) ;

__attribute__((used)) static inline void free_partition(struct mtd_part *p)
{
 kfree(p->mtd.name);
 kfree(p);
}
