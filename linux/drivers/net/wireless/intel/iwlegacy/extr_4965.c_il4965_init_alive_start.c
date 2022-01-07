
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int restart; int workqueue; int temperature; } ;


 int D_INFO (char*) ;
 int il4965_hw_get_temperature (struct il_priv*) ;
 scalar_t__ il4965_set_ucode_ptrs (struct il_priv*) ;
 scalar_t__ il4965_verify_ucode (struct il_priv*) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void
il4965_init_alive_start(struct il_priv *il)
{



 if (il4965_verify_ucode(il)) {


  D_INFO("Bad \"initialize\" uCode load.\n");
  goto restart;
 }


 il->temperature = il4965_hw_get_temperature(il);




 D_INFO("Initialization Alive received.\n");
 if (il4965_set_ucode_ptrs(il)) {


  D_INFO("Couldn't set up uCode pointers.\n");
  goto restart;
 }
 return;

restart:
 queue_work(il->workqueue, &il->restart);
}
