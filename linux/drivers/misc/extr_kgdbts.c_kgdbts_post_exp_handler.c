
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int THIS_MODULE ;
 int kgdb_connected ;
 int module_put (int ) ;

__attribute__((used)) static void kgdbts_post_exp_handler(void)
{

 if (!kgdb_connected)
  module_put(THIS_MODULE);
}
