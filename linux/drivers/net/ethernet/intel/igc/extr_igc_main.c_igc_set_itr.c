
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int itr; scalar_t__ ring; } ;
struct igc_q_vector {int itr_val; int set_itr; TYPE_1__ rx; TYPE_1__ tx; struct igc_adapter* adapter; } ;
struct igc_adapter {int link_speed; int rx_itr_setting; int tx_itr_setting; } ;


 int IGC_20K_ITR ;
 int IGC_4K_ITR ;
 int IGC_70K_ITR ;



 int igc_update_itr (struct igc_q_vector*,TYPE_1__*) ;


 int max (int,int) ;

__attribute__((used)) static void igc_set_itr(struct igc_q_vector *q_vector)
{
 struct igc_adapter *adapter = q_vector->adapter;
 u32 new_itr = q_vector->itr_val;
 u8 current_itr = 0;


 switch (adapter->link_speed) {
 case 132:
 case 131:
  current_itr = 0;
  new_itr = IGC_4K_ITR;
  goto set_itr_now;
 default:
  break;
 }

 igc_update_itr(q_vector, &q_vector->tx);
 igc_update_itr(q_vector, &q_vector->rx);

 current_itr = max(q_vector->rx.itr, q_vector->tx.itr);


 if (current_itr == 128 &&
     ((q_vector->rx.ring && adapter->rx_itr_setting == 3) ||
     (!q_vector->rx.ring && adapter->tx_itr_setting == 3)))
  current_itr = 129;

 switch (current_itr) {

 case 128:
  new_itr = IGC_70K_ITR;
  break;
 case 129:
  new_itr = IGC_20K_ITR;
  break;
 case 130:
  new_itr = IGC_4K_ITR;
  break;
 default:
  break;
 }

set_itr_now:
 if (new_itr != q_vector->itr_val) {




  new_itr = new_itr > q_vector->itr_val ?
     max((new_itr * q_vector->itr_val) /
     (new_itr + (q_vector->itr_val >> 2)),
     new_itr) : new_itr;






  q_vector->itr_val = new_itr;
  q_vector->set_itr = 1;
 }
}
