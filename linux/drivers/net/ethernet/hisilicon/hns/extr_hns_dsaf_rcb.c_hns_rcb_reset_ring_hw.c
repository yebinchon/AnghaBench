
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct hnae_queue {int handle; TYPE_1__* dev; } ;
struct TYPE_4__ {int port_index; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ RCB_RESET_TRY_TIMES ;
 scalar_t__ RCB_RESET_WAIT_TIMES ;
 int RCB_RING_COULD_BE_RST ;
 int RCB_RING_PREFETCH_EN_REG ;
 int RCB_RING_T0_BE_RST ;
 int RCB_RING_TX_RING_FBDNUM_REG ;
 int dev_err (int ,char*,int ) ;
 scalar_t__ dsaf_read_dev (struct hnae_queue*,int ) ;
 int dsaf_write_dev (struct hnae_queue*,int ,int) ;
 TYPE_2__* hns_ae_get_vf_cb (int ) ;
 int msleep (int) ;
 int usleep_range (int,int) ;

void hns_rcb_reset_ring_hw(struct hnae_queue *q)
{
 u32 wait_cnt;
 u32 try_cnt = 0;
 u32 could_ret;

 u32 tx_fbd_num;

 while (try_cnt++ < RCB_RESET_TRY_TIMES) {
  usleep_range(100, 200);
  tx_fbd_num = dsaf_read_dev(q, RCB_RING_TX_RING_FBDNUM_REG);
  if (tx_fbd_num)
   continue;

  dsaf_write_dev(q, RCB_RING_PREFETCH_EN_REG, 0);

  dsaf_write_dev(q, RCB_RING_T0_BE_RST, 1);

  msleep(20);
  could_ret = dsaf_read_dev(q, RCB_RING_COULD_BE_RST);

  wait_cnt = 0;
  while (!could_ret && (wait_cnt < RCB_RESET_WAIT_TIMES)) {
   dsaf_write_dev(q, RCB_RING_T0_BE_RST, 0);

   dsaf_write_dev(q, RCB_RING_T0_BE_RST, 1);

   msleep(20);
   could_ret = dsaf_read_dev(q, RCB_RING_COULD_BE_RST);

   wait_cnt++;
  }

  dsaf_write_dev(q, RCB_RING_T0_BE_RST, 0);

  if (could_ret)
   break;
 }

 if (try_cnt >= RCB_RESET_TRY_TIMES)
  dev_err(q->dev->dev, "port%d reset ring fail\n",
   hns_ae_get_vf_cb(q->handle)->port_index);
}
