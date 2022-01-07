
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ksz_port_mib {int counters; scalar_t__ cnt_ptr; int cnt_mutex; } ;
struct ksz_device {int mib_cnt; TYPE_1__* ports; } ;
struct TYPE_2__ {struct ksz_port_mib mib; } ;


 int MIB_COUNTER_FLUSH_FREEZE ;
 int REG_PORT_MIB_CTRL_STAT__4 ;
 int REG_SW_MAC_CTRL_6 ;
 int SW_MIB_COUNTER_FLUSH ;
 int ksz_pwrite32 (struct ksz_device*,int,int ,int ) ;
 int ksz_write8 (struct ksz_device*,int ,int ) ;
 int memset (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ksz9477_port_init_cnt(struct ksz_device *dev, int port)
{
 struct ksz_port_mib *mib = &dev->ports[port].mib;


 mutex_lock(&mib->cnt_mutex);
 ksz_pwrite32(dev, port, REG_PORT_MIB_CTRL_STAT__4,
       MIB_COUNTER_FLUSH_FREEZE);
 ksz_write8(dev, REG_SW_MAC_CTRL_6, SW_MIB_COUNTER_FLUSH);
 ksz_pwrite32(dev, port, REG_PORT_MIB_CTRL_STAT__4, 0);
 mutex_unlock(&mib->cnt_mutex);

 mib->cnt_ptr = 0;
 memset(mib->counters, 0, dev->mib_cnt * sizeof(u64));
}
