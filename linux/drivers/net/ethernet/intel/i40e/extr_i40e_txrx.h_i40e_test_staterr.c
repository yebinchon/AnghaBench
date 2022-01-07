
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status_error_len; } ;
struct TYPE_4__ {TYPE_1__ qword1; } ;
union i40e_rx_desc {TYPE_2__ wb; } ;
typedef int u64 ;


 int cpu_to_le64 (int const) ;

__attribute__((used)) static inline bool i40e_test_staterr(union i40e_rx_desc *rx_desc,
         const u64 stat_err_bits)
{
 return !!(rx_desc->wb.qword1.status_error_len &
    cpu_to_le64(stat_err_bits));
}
