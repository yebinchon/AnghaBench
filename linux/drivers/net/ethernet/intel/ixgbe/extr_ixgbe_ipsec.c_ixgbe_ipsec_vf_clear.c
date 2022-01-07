
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ixgbe_ipsec {TYPE_2__* tx_tbl; scalar_t__ num_tx_sa; TYPE_1__* rx_tbl; scalar_t__ num_rx_sa; } ;
struct ixgbe_adapter {struct ixgbe_ipsec* ipsec; } ;
struct TYPE_4__ {int mode; scalar_t__ vf; int xs; int used; } ;
struct TYPE_3__ {int mode; scalar_t__ vf; int xs; int used; } ;


 int IXGBE_IPSEC_MAX_SA_COUNT ;
 int IXGBE_RXTXMOD_VF ;
 int ixgbe_ipsec_del_sa (int ) ;

void ixgbe_ipsec_vf_clear(struct ixgbe_adapter *adapter, u32 vf)
{
 struct ixgbe_ipsec *ipsec = adapter->ipsec;
 int i;

 if (!ipsec)
  return;


 for (i = 0; i < IXGBE_IPSEC_MAX_SA_COUNT && ipsec->num_rx_sa; i++) {
  if (!ipsec->rx_tbl[i].used)
   continue;
  if (ipsec->rx_tbl[i].mode & IXGBE_RXTXMOD_VF &&
      ipsec->rx_tbl[i].vf == vf)
   ixgbe_ipsec_del_sa(ipsec->rx_tbl[i].xs);
 }


 for (i = 0; i < IXGBE_IPSEC_MAX_SA_COUNT && ipsec->num_tx_sa; i++) {
  if (!ipsec->tx_tbl[i].used)
   continue;
  if (ipsec->tx_tbl[i].mode & IXGBE_RXTXMOD_VF &&
      ipsec->tx_tbl[i].vf == vf)
   ixgbe_ipsec_del_sa(ipsec->tx_tbl[i].xs);
 }
}
