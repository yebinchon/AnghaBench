
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct igb_q_vector {int itr_val; scalar_t__ set_itr; int itr_register; struct igb_adapter* adapter; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct igb_adapter {TYPE_2__ hw; } ;


 int E1000_EITR_CNT_IGNR ;
 scalar_t__ e1000_82575 ;
 int writel (int,int ) ;

__attribute__((used)) static void igb_write_itr(struct igb_q_vector *q_vector)
{
 struct igb_adapter *adapter = q_vector->adapter;
 u32 itr_val = q_vector->itr_val & 0x7FFC;

 if (!q_vector->set_itr)
  return;

 if (!itr_val)
  itr_val = 0x4;

 if (adapter->hw.mac.type == e1000_82575)
  itr_val |= itr_val << 16;
 else
  itr_val |= E1000_EITR_CNT_IGNR;

 writel(itr_val, q_vector->itr_register);
 q_vector->set_itr = 0;
}
