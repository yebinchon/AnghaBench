
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_2__ {size_t tx_phy_ctl3; } ;


 size_t MCS_TXS_MASK ;
 size_t MCS_TXS_SHIFT ;
 TYPE_1__* mcs_table ;

__attribute__((used)) static inline u8 mcs_2_txstreams(u8 mcs)
{
 return (mcs_table[mcs].tx_phy_ctl3 & MCS_TXS_MASK) >> MCS_TXS_SHIFT;
}
