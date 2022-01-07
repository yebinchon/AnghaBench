
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ is_valid; } ;
struct il_priv {int restart; int workqueue; TYPE_1__ card_alive_init; } ;


 int D_INFO (char*) ;
 scalar_t__ UCODE_VALID_OK ;
 scalar_t__ il3945_set_ucode_ptrs (struct il_priv*) ;
 scalar_t__ il3945_verify_ucode (struct il_priv*) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void
il3945_init_alive_start(struct il_priv *il)
{

 if (il->card_alive_init.is_valid != UCODE_VALID_OK) {


  D_INFO("Initialize Alive failed.\n");
  goto restart;
 }




 if (il3945_verify_ucode(il)) {


  D_INFO("Bad \"initialize\" uCode load.\n");
  goto restart;
 }




 D_INFO("Initialization Alive received.\n");
 if (il3945_set_ucode_ptrs(il)) {


  D_INFO("Couldn't set up uCode pointers.\n");
  goto restart;
 }
 return;

restart:
 queue_work(il->workqueue, &il->restart);
}
