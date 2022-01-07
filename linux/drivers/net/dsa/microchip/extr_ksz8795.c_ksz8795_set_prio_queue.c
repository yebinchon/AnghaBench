
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ksz_device {int dummy; } ;


 int PORT_QUEUE_SPLIT_1 ;
 int PORT_QUEUE_SPLIT_2 ;
 int PORT_QUEUE_SPLIT_4 ;
 int PORT_QUEUE_SPLIT_H ;
 int PORT_QUEUE_SPLIT_L ;
 int P_DROP_TAG_CTRL ;
 int REG_PORT_CTRL_0 ;
 int REG_SW_CTRL_19 ;
 int SW_OUT_RATE_LIMIT_QUEUE_BASED ;
 int ksz_cfg (struct ksz_device*,int ,int ,int) ;
 int ksz_pread8 (struct ksz_device*,int,int ,int *) ;
 int ksz_pwrite8 (struct ksz_device*,int,int ,int ) ;

__attribute__((used)) static void ksz8795_set_prio_queue(struct ksz_device *dev, int port, int queue)
{
 u8 hi, lo;


 switch (queue) {
 case 4:
 case 3:
  queue = PORT_QUEUE_SPLIT_4;
  break;
 case 2:
  queue = PORT_QUEUE_SPLIT_2;
  break;
 default:
  queue = PORT_QUEUE_SPLIT_1;
 }
 ksz_pread8(dev, port, REG_PORT_CTRL_0, &lo);
 ksz_pread8(dev, port, P_DROP_TAG_CTRL, &hi);
 lo &= ~PORT_QUEUE_SPLIT_L;
 if (queue & PORT_QUEUE_SPLIT_2)
  lo |= PORT_QUEUE_SPLIT_L;
 hi &= ~PORT_QUEUE_SPLIT_H;
 if (queue & PORT_QUEUE_SPLIT_4)
  hi |= PORT_QUEUE_SPLIT_H;
 ksz_pwrite8(dev, port, REG_PORT_CTRL_0, lo);
 ksz_pwrite8(dev, port, P_DROP_TAG_CTRL, hi);


 if (queue != PORT_QUEUE_SPLIT_1)
  ksz_cfg(dev, REG_SW_CTRL_19, SW_OUT_RATE_LIMIT_QUEUE_BASED,
   1);
}
