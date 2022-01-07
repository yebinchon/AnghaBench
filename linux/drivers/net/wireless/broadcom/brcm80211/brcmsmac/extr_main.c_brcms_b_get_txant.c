
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct brcms_hardware {TYPE_2__* wlc; } ;
struct TYPE_4__ {TYPE_1__* stf; } ;
struct TYPE_3__ {int txant; } ;



u16 brcms_b_get_txant(struct brcms_hardware *wlc_hw)
{
 return (u16) wlc_hw->wlc->stf->txant;
}
