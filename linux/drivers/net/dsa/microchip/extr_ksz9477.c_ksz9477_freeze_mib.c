
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int cnt_mutex; } ;
struct ksz_port {int freeze; TYPE_1__ mib; } ;
struct ksz_device {struct ksz_port* ports; } ;


 int MIB_COUNTER_FLUSH_FREEZE ;
 int REG_PORT_MIB_CTRL_STAT__4 ;
 int ksz_pwrite32 (struct ksz_device*,int,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ksz9477_freeze_mib(struct ksz_device *dev, int port, bool freeze)
{
 u32 val = freeze ? MIB_COUNTER_FLUSH_FREEZE : 0;
 struct ksz_port *p = &dev->ports[port];


 mutex_lock(&p->mib.cnt_mutex);
 ksz_pwrite32(dev, port, REG_PORT_MIB_CTRL_STAT__4, val);


 p->freeze = freeze;
 mutex_unlock(&p->mib.cnt_mutex);
}
