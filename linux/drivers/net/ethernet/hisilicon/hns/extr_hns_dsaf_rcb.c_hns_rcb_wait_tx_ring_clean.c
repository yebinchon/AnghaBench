
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct hnae_queue {TYPE_1__* dev; int tx_ring; } ;
struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 int HNS_MAX_WAIT_CNT ;
 int RCB_REG_HEAD ;
 int RCB_REG_TAIL ;
 int dev_err (int ,char*) ;
 scalar_t__ dsaf_read_dev (int *,int ) ;
 int usleep_range (int,int) ;

int hns_rcb_wait_tx_ring_clean(struct hnae_queue *qs)
{
 u32 head, tail;
 int wait_cnt;

 tail = dsaf_read_dev(&qs->tx_ring, RCB_REG_TAIL);
 wait_cnt = 0;
 while (wait_cnt++ < HNS_MAX_WAIT_CNT) {
  head = dsaf_read_dev(&qs->tx_ring, RCB_REG_HEAD);
  if (tail == head)
   break;

  usleep_range(100, 200);
 }

 if (wait_cnt >= HNS_MAX_WAIT_CNT) {
  dev_err(qs->dev->dev, "rcb wait timeout, head not equal to tail.\n");
  return -EBUSY;
 }

 return 0;
}
