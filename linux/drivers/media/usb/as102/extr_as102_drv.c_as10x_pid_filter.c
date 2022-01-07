
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
typedef int u16 ;
struct as10x_ts_filter {int idx; int pid; int type; } ;
struct as10x_bus_adapter_t {int lock; TYPE_1__* usb_dev; } ;
struct as102_dev_t {struct as10x_bus_adapter_t bus_adap; } ;
struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 int EFAULT ;
 int TS_PID_TYPE_TS ;
 int as10x_cmd_add_PID_filter (struct as10x_bus_adapter_t*,struct as10x_ts_filter*) ;
 int as10x_cmd_del_PID_filter (struct as10x_bus_adapter_t*,int ) ;
 int dev_dbg (int *,char*,...) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int as10x_pid_filter(struct as102_dev_t *dev,
       int index, u16 pid, int onoff) {

 struct as10x_bus_adapter_t *bus_adap = &dev->bus_adap;
 int ret = -EFAULT;

 if (mutex_lock_interruptible(&dev->bus_adap.lock)) {
  dev_dbg(&dev->bus_adap.usb_dev->dev,
   "amutex_lock_interruptible(lock) failed !\n");
  return -EBUSY;
 }

 switch (onoff) {
 case 0:
  ret = as10x_cmd_del_PID_filter(bus_adap, (uint16_t) pid);
  dev_dbg(&dev->bus_adap.usb_dev->dev,
   "DEL_PID_FILTER([%02d] 0x%04x) ret = %d\n",
   index, pid, ret);
  break;
 case 1:
 {
  struct as10x_ts_filter filter;

  filter.type = TS_PID_TYPE_TS;
  filter.idx = 0xFF;
  filter.pid = pid;

  ret = as10x_cmd_add_PID_filter(bus_adap, &filter);
  dev_dbg(&dev->bus_adap.usb_dev->dev,
   "ADD_PID_FILTER([%02d -> %02d], 0x%04x) ret = %d\n",
   index, filter.idx, filter.pid, ret);
  break;
 }
 }

 mutex_unlock(&dev->bus_adap.lock);
 return ret;
}
