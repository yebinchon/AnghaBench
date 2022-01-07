
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ max_entries_in_tx_burst; } ;
struct ena_com_io_sq {scalar_t__ mem_queue_type; TYPE_1__ llq_info; } ;


 scalar_t__ ENA_ADMIN_PLACEMENT_POLICY_DEV ;

__attribute__((used)) static inline bool is_llq_max_tx_burst_exists(struct ena_com_io_sq *io_sq)
{
 return (io_sq->mem_queue_type == ENA_ADMIN_PLACEMENT_POLICY_DEV) &&
        io_sq->llq_info.max_entries_in_tx_burst > 0;
}
