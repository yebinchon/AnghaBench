
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct be_adapter {scalar_t__ db; } ;


 int BE_ERROR_HW ;
 int DB_CQ_NUM_POPPED_SHIFT ;
 scalar_t__ DB_CQ_OFFSET ;
 int DB_CQ_REARM_SHIFT ;
 int DB_CQ_RING_ID_EXT_MASK ;
 int DB_CQ_RING_ID_EXT_MASK_SHIFT ;
 int DB_CQ_RING_ID_MASK ;
 scalar_t__ be_check_error (struct be_adapter*,int ) ;
 int iowrite32 (int,scalar_t__) ;

void be_cq_notify(struct be_adapter *adapter, u16 qid, bool arm, u16 num_popped)
{
 u32 val = 0;

 val |= qid & DB_CQ_RING_ID_MASK;
 val |= ((qid & DB_CQ_RING_ID_EXT_MASK) <<
   DB_CQ_RING_ID_EXT_MASK_SHIFT);

 if (be_check_error(adapter, BE_ERROR_HW))
  return;

 if (arm)
  val |= 1 << DB_CQ_REARM_SHIFT;
 val |= num_popped << DB_CQ_NUM_POPPED_SHIFT;
 iowrite32(val, adapter->db + DB_CQ_OFFSET);
}
