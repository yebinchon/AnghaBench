
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct ksz_port_mib {size_t cnt_ptr; int * counters; } ;
struct ksz_device {size_t reg_mib_cnt; size_t mib_cnt; TYPE_2__* dev_ops; TYPE_1__* ports; } ;
struct TYPE_4__ {int (* r_mib_pkt ) (struct ksz_device*,int,size_t,int *,int *) ;int (* r_mib_cnt ) (struct ksz_device*,int,size_t,int *) ;} ;
struct TYPE_3__ {struct ksz_port_mib mib; } ;


 int stub1 (struct ksz_device*,int,size_t,int *) ;
 int stub2 (struct ksz_device*,int,size_t,int *,int *) ;

__attribute__((used)) static void port_r_cnt(struct ksz_device *dev, int port)
{
 struct ksz_port_mib *mib = &dev->ports[port].mib;
 u64 *dropped;


 while (mib->cnt_ptr < dev->reg_mib_cnt) {
  dev->dev_ops->r_mib_cnt(dev, port, mib->cnt_ptr,
     &mib->counters[mib->cnt_ptr]);
  ++mib->cnt_ptr;
 }


 dropped = &mib->counters[dev->mib_cnt];


 while (mib->cnt_ptr < dev->mib_cnt) {
  dev->dev_ops->r_mib_pkt(dev, port, mib->cnt_ptr,
     dropped, &mib->counters[mib->cnt_ptr]);
  ++mib->cnt_ptr;
 }
 mib->cnt_ptr = 0;
}
