
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ version; char const* name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* ath_mac_bb_names ;

__attribute__((used)) static const char *ath9k_hw_mac_bb_name(u32 mac_bb_version)
{
 int i;

 for (i=0; i<ARRAY_SIZE(ath_mac_bb_names); i++) {
  if (ath_mac_bb_names[i].version == mac_bb_version) {
   return ath_mac_bb_names[i].name;
  }
 }

 return "????";
}
