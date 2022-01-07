
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_c_info {TYPE_1__* hw; } ;
struct TYPE_2__ {int d11core; } ;


 int D11REGOFFS (int ) ;
 int MCTL_TBTTHOLD ;
 int bcma_mask32 (int ,int ,int ) ;
 int bcma_read32 (int ,int ) ;
 int maccontrol ;

__attribute__((used)) static void brcms_c_time_unlock(struct brcms_c_info *wlc)
{
 bcma_mask32(wlc->hw->d11core, D11REGOFFS(maccontrol), ~MCTL_TBTTHOLD);

 bcma_read32(wlc->hw->d11core, D11REGOFFS(maccontrol));
}
