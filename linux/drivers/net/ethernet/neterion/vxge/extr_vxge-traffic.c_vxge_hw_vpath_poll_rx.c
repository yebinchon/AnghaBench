
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_4__ {int userdata; } ;
struct __vxge_hw_ring {scalar_t__ cmpl_cnt; int doorbell_cnt; int rxds_limit; int total_db_cnt; int rxds_per_block; TYPE_3__* common_reg; TYPE_2__* vp_reg; TYPE_1__ channel; int (* callback ) (struct __vxge_hw_ring*,void*,int ,int ) ;} ;
typedef enum vxge_hw_status { ____Placeholder_vxge_hw_status } vxge_hw_status ;
struct TYPE_6__ {int titan_general_int_status; } ;
struct TYPE_5__ {int prc_rxd_doorbell; } ;


 int VXGE_HW_OK ;
 int VXGE_HW_PRC_RXD_DOORBELL_NEW_QW_CNT (int) ;
 int readl (int *) ;
 int stub1 (struct __vxge_hw_ring*,void*,int ,int ) ;
 int vxge_hw_ring_rxd_next_completed (struct __vxge_hw_ring*,void**,int *) ;
 int writeq (int ,int *) ;

enum vxge_hw_status vxge_hw_vpath_poll_rx(struct __vxge_hw_ring *ring)
{
 u8 t_code;
 enum vxge_hw_status status = VXGE_HW_OK;
 void *first_rxdh;
 u64 val64 = 0;
 int new_count = 0;

 ring->cmpl_cnt = 0;

 status = vxge_hw_ring_rxd_next_completed(ring, &first_rxdh, &t_code);
 if (status == VXGE_HW_OK)
  ring->callback(ring, first_rxdh,
   t_code, ring->channel.userdata);

 if (ring->cmpl_cnt != 0) {
  ring->doorbell_cnt += ring->cmpl_cnt;
  if (ring->doorbell_cnt >= ring->rxds_limit) {




   new_count = (ring->doorbell_cnt * 4);


   ring->total_db_cnt += ring->doorbell_cnt;
   if (ring->total_db_cnt >= ring->rxds_per_block) {
    new_count += 4;

    ring->total_db_cnt %= ring->rxds_per_block;
   }
   writeq(VXGE_HW_PRC_RXD_DOORBELL_NEW_QW_CNT(new_count),
    &ring->vp_reg->prc_rxd_doorbell);
   val64 =
     readl(&ring->common_reg->titan_general_int_status);
   ring->doorbell_cnt = 0;
  }
 }

 return status;
}
