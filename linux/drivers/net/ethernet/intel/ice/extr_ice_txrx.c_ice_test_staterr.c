
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status_error0; } ;
union ice_32b_rx_flex_desc {TYPE_1__ wb; } ;
typedef int u16 ;


 int cpu_to_le16 (int const) ;

__attribute__((used)) static bool
ice_test_staterr(union ice_32b_rx_flex_desc *rx_desc, const u16 stat_err_bits)
{
 return !!(rx_desc->wb.status_error0 &
    cpu_to_le16(stat_err_bits));
}
