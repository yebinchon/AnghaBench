
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int THIS_MODULE ;
 int kgdb_connected ;
 int try_module_get (int ) ;

__attribute__((used)) static void kgdbts_pre_exp_handler(void)
{

 if (!kgdb_connected)
  try_module_get(THIS_MODULE);
}
