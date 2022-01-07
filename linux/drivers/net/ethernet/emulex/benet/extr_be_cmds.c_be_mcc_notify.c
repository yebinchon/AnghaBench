
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct be_queue_info {int id; } ;
struct TYPE_2__ {struct be_queue_info q; } ;
struct be_adapter {scalar_t__ db; TYPE_1__ mcc_obj; } ;


 int BE_ERROR_ANY ;
 int DB_MCCQ_NUM_POSTED_SHIFT ;
 scalar_t__ DB_MCCQ_OFFSET ;
 int DB_MCCQ_RING_ID_MASK ;
 int EIO ;
 scalar_t__ be_check_error (struct be_adapter*,int ) ;
 int iowrite32 (int,scalar_t__) ;
 int wmb () ;

__attribute__((used)) static int be_mcc_notify(struct be_adapter *adapter)
{
 struct be_queue_info *mccq = &adapter->mcc_obj.q;
 u32 val = 0;

 if (be_check_error(adapter, BE_ERROR_ANY))
  return -EIO;

 val |= mccq->id & DB_MCCQ_RING_ID_MASK;
 val |= 1 << DB_MCCQ_NUM_POSTED_SHIFT;

 wmb();
 iowrite32(val, adapter->db + DB_MCCQ_OFFSET);

 return 0;
}
