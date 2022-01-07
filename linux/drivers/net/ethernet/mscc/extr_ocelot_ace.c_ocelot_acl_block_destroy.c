
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocelot_acl_block {int dummy; } ;


 int kfree (struct ocelot_acl_block*) ;

__attribute__((used)) static void ocelot_acl_block_destroy(struct ocelot_acl_block *block)
{
 kfree(block);
}
