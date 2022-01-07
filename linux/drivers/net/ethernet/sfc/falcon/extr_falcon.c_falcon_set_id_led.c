
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ef4_nic {int dummy; } ;
typedef enum ef4_led_mode { ____Placeholder_ef4_led_mode } ef4_led_mode ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {int (* set_id_led ) (struct ef4_nic*,int) ;} ;


 TYPE_2__* falcon_board (struct ef4_nic*) ;
 int stub1 (struct ef4_nic*,int) ;

__attribute__((used)) static void falcon_set_id_led(struct ef4_nic *efx, enum ef4_led_mode mode)
{
 falcon_board(efx)->type->set_id_led(efx, mode);
}
