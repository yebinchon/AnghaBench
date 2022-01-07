
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int dummy; } ;


 int RESET_TYPE_INVISIBLE ;
 int ef4_schedule_reset (struct ef4_nic*,int ) ;

__attribute__((used)) static void falcon_a1_prepare_enable_fc_tx(struct ef4_nic *efx)
{

 ef4_schedule_reset(efx, RESET_TYPE_INVISIBLE);
}
