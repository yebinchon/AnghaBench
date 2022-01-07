
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ath_hw {int dummy; } ;
struct TYPE_2__ {int switchcomspdt; } ;


 TYPE_1__* ar9003_modal_header (struct ath_hw*,int) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static u16 ar9003_switch_com_spdt_get(struct ath_hw *ah, bool is2ghz)
{
 return le16_to_cpu(ar9003_modal_header(ah, is2ghz)->switchcomspdt);
}
