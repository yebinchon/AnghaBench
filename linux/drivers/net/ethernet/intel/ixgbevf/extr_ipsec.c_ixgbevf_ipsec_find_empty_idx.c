
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct ixgbevf_ipsec {size_t num_rx_sa; size_t num_tx_sa; TYPE_2__* tx_tbl; TYPE_1__* rx_tbl; } ;
struct TYPE_4__ {int used; } ;
struct TYPE_3__ {int used; } ;


 int ENOSPC ;
 size_t IXGBE_IPSEC_MAX_SA_COUNT ;

__attribute__((used)) static
int ixgbevf_ipsec_find_empty_idx(struct ixgbevf_ipsec *ipsec, bool rxtable)
{
 u32 i;

 if (rxtable) {
  if (ipsec->num_rx_sa == IXGBE_IPSEC_MAX_SA_COUNT)
   return -ENOSPC;


  for (i = 0; i < IXGBE_IPSEC_MAX_SA_COUNT; i++) {
   if (!ipsec->rx_tbl[i].used)
    return i;
  }
 } else {
  if (ipsec->num_tx_sa == IXGBE_IPSEC_MAX_SA_COUNT)
   return -ENOSPC;


  for (i = 0; i < IXGBE_IPSEC_MAX_SA_COUNT; i++) {
   if (!ipsec->tx_tbl[i].used)
    return i;
  }
 }

 return -ENOSPC;
}
