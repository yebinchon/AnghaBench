
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocelot_acl_block {struct ocelot* ocelot; scalar_t__ count; int rules; } ;
struct ocelot {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct ocelot_acl_block* kzalloc (int,int ) ;

__attribute__((used)) static struct ocelot_acl_block *ocelot_acl_block_create(struct ocelot *ocelot)
{
 struct ocelot_acl_block *block;

 block = kzalloc(sizeof(*block), GFP_KERNEL);
 if (!block)
  return ((void*)0);

 INIT_LIST_HEAD(&block->rules);
 block->count = 0;
 block->ocelot = ocelot;

 return block;
}
