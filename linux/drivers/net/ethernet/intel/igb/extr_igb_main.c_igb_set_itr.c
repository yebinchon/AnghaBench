
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int itr; scalar_t__ ring; } ;
struct igb_q_vector {int itr_val; int set_itr; TYPE_1__ rx; TYPE_1__ tx; struct igb_adapter* adapter; } ;
struct igb_adapter {scalar_t__ link_speed; int rx_itr_setting; int tx_itr_setting; } ;


 int IGB_20K_ITR ;
 int IGB_4K_ITR ;
 int IGB_70K_ITR ;
 scalar_t__ SPEED_1000 ;

 int igb_update_itr (struct igb_q_vector*,TYPE_1__*) ;


 int max (int,int) ;

__attribute__((used)) static void igb_set_itr(struct igb_q_vector *q_vector)
{
 struct igb_adapter *adapter = q_vector->adapter;
 u32 new_itr = q_vector->itr_val;
 u8 current_itr = 0;


 if (adapter->link_speed != SPEED_1000) {
  current_itr = 0;
  new_itr = IGB_4K_ITR;
  goto set_itr_now;
 }

 igb_update_itr(q_vector, &q_vector->tx);
 igb_update_itr(q_vector, &q_vector->rx);

 current_itr = max(q_vector->rx.itr, q_vector->tx.itr);


 if (current_itr == 128 &&
     ((q_vector->rx.ring && adapter->rx_itr_setting == 3) ||
      (!q_vector->rx.ring && adapter->tx_itr_setting == 3)))
  current_itr = 129;

 switch (current_itr) {

 case 128:
  new_itr = IGB_70K_ITR;
  break;
 case 129:
  new_itr = IGB_20K_ITR;
  break;
 case 130:
  new_itr = IGB_4K_ITR;
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
