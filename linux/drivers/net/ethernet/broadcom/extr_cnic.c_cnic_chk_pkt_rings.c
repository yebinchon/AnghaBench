
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct cnic_local {scalar_t__* rx_cons_ptr; scalar_t__* tx_cons_ptr; scalar_t__ tx_cons; scalar_t__ rx_cons; int cnic_local_flags; TYPE_1__* udev; } ;
struct TYPE_2__ {int cnic_uinfo; } ;


 int CNIC_LCL_FL_L2_WAIT ;
 int CNIC_LCL_FL_RINGS_INITED ;
 int clear_bit (int ,int *) ;
 int cnic_l2_completion (struct cnic_local*) ;
 scalar_t__ test_bit (int ,int *) ;
 int uio_event_notify (int *) ;

__attribute__((used)) static void cnic_chk_pkt_rings(struct cnic_local *cp)
{
 u16 rx_cons, tx_cons;
 int comp = 0;

 if (!test_bit(CNIC_LCL_FL_RINGS_INITED, &cp->cnic_local_flags))
  return;

 rx_cons = *cp->rx_cons_ptr;
 tx_cons = *cp->tx_cons_ptr;
 if (cp->tx_cons != tx_cons || cp->rx_cons != rx_cons) {
  if (test_bit(CNIC_LCL_FL_L2_WAIT, &cp->cnic_local_flags))
   comp = cnic_l2_completion(cp);

  cp->tx_cons = tx_cons;
  cp->rx_cons = rx_cons;

  if (cp->udev)
   uio_event_notify(&cp->udev->cnic_uinfo);
 }
 if (comp)
  clear_bit(CNIC_LCL_FL_L2_WAIT, &cp->cnic_local_flags);
}
