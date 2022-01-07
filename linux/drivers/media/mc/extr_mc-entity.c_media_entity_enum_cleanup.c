
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_entity_enum {int bmap; } ;


 int kfree (int ) ;

void media_entity_enum_cleanup(struct media_entity_enum *ent_enum)
{
 kfree(ent_enum->bmap);
}
