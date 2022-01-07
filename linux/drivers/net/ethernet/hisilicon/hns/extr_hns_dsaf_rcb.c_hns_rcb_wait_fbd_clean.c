
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hnae_queue {TYPE_1__* handle; } ;
struct TYPE_2__ {int owner_dev; } ;


 int RCB_INT_FLAG_RX ;
 int RCB_INT_FLAG_TX ;
 int RCB_RING_RX_RING_FBDNUM_REG ;
 int RCB_RING_TX_RING_FBDNUM_REG ;
 int dev_err (int ,char*,int,int) ;
 int dsaf_read_dev (struct hnae_queue*,int ) ;
 int usleep_range (int,int) ;

void hns_rcb_wait_fbd_clean(struct hnae_queue **qs, int q_num, u32 flag)
{
 int i, wait_cnt;
 u32 fbd_num;

 for (wait_cnt = i = 0; i < q_num; wait_cnt++) {
  usleep_range(200, 300);
  fbd_num = 0;
  if (flag & RCB_INT_FLAG_TX)
   fbd_num += dsaf_read_dev(qs[i],
       RCB_RING_TX_RING_FBDNUM_REG);
  if (flag & RCB_INT_FLAG_RX)
   fbd_num += dsaf_read_dev(qs[i],
       RCB_RING_RX_RING_FBDNUM_REG);
  if (!fbd_num)
   i++;
  if (wait_cnt >= 10000)
   break;
 }

 if (i < q_num)
  dev_err(qs[i]->handle->owner_dev,
   "queue(%d) wait fbd(%d) clean fail!!\n", i, fbd_num);
}
