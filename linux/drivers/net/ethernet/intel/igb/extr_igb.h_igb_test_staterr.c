
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status_error; } ;
struct TYPE_4__ {TYPE_1__ upper; } ;
union e1000_adv_rx_desc {TYPE_2__ wb; } ;
typedef int u32 ;
typedef int __le32 ;


 int cpu_to_le32 (int const) ;

__attribute__((used)) static inline __le32 igb_test_staterr(union e1000_adv_rx_desc *rx_desc,
          const u32 stat_err_bits)
{
 return rx_desc->wb.upper.status_error & cpu_to_le32(stat_err_bits);
}
