
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int acl_block ;
 int ocelot_acl_block_destroy (int ) ;

void ocelot_ace_deinit(void)
{
 ocelot_acl_block_destroy(acl_block);
}
