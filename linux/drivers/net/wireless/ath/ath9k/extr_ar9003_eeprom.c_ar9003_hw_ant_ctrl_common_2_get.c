
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ath_hw {int dummy; } ;
struct TYPE_2__ {int antCtrlCommon2; } ;


 TYPE_1__* ar9003_modal_header (struct ath_hw*,int) ;
 int le32_to_cpu (int ) ;

u32 ar9003_hw_ant_ctrl_common_2_get(struct ath_hw *ah, bool is2ghz)
{
 return le32_to_cpu(ar9003_modal_header(ah, is2ghz)->antCtrlCommon2);
}
