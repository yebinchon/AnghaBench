
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


 int BIT (int) ;
 int REG_SW_CTRL_6 ;
 int SW_MIB_COUNTER_FLUSH ;
 int ksz_cfg (struct ksz_device*,int ,int ,int) ;
 int memset (int *,int ,int) ;
 int stub1 (struct ksz_device*,int,size_t,int *) ;
 int stub2 (struct ksz_device*,int,size_t,int *,int *) ;

__attribute__((used)) static void ksz8795_port_init_cnt(struct ksz_device *dev, int port)
{
 struct ksz_port_mib *mib = &dev->ports[port].mib;


 ksz_cfg(dev, REG_SW_CTRL_6, BIT(port), 1);
 ksz_cfg(dev, REG_SW_CTRL_6, SW_MIB_COUNTER_FLUSH, 1);
 ksz_cfg(dev, REG_SW_CTRL_6, BIT(port), 0);

 mib->cnt_ptr = 0;


 while (mib->cnt_ptr < dev->reg_mib_cnt) {
  dev->dev_ops->r_mib_cnt(dev, port, mib->cnt_ptr,
     &mib->counters[mib->cnt_ptr]);
  ++mib->cnt_ptr;
 }


 while (mib->cnt_ptr < dev->mib_cnt) {
  dev->dev_ops->r_mib_pkt(dev, port, mib->cnt_ptr,
     ((void*)0), &mib->counters[mib->cnt_ptr]);
  ++mib->cnt_ptr;
 }
 mib->cnt_ptr = 0;
 memset(mib->counters, 0, dev->mib_cnt * sizeof(u64));
}
