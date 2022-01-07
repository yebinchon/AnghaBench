
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct __vxge_hw_fifo {TYPE_1__* nofl_db; } ;
struct TYPE_2__ {int txdl_ptr; int control_0; } ;


 int VXGE_HW_NODBW_GET_NO_SNOOP (int ) ;
 int VXGE_HW_NODBW_LAST_TXD_NUMBER (int ) ;
 int VXGE_HW_NODBW_TYPE (int ) ;
 int VXGE_HW_NODBW_TYPE_NODBW ;
 int writeq (int,int *) ;

__attribute__((used)) static void __vxge_hw_non_offload_db_post(struct __vxge_hw_fifo *fifo,
 u64 txdl_ptr, u32 num_txds, u32 no_snoop)
{
 writeq(VXGE_HW_NODBW_TYPE(VXGE_HW_NODBW_TYPE_NODBW) |
  VXGE_HW_NODBW_LAST_TXD_NUMBER(num_txds) |
  VXGE_HW_NODBW_GET_NO_SNOOP(no_snoop),
  &fifo->nofl_db->control_0);

 writeq(txdl_ptr, &fifo->nofl_db->txdl_ptr);
}
