
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netvsc_device {scalar_t__ send_buf_gpadl_handle; } ;
struct net_device {int dummy; } ;
struct hv_device {int channel; } ;


 int netdev_err (struct net_device*,char*) ;
 int vmbus_teardown_gpadl (int ,scalar_t__) ;

__attribute__((used)) static void netvsc_teardown_send_gpadl(struct hv_device *device,
           struct netvsc_device *net_device,
           struct net_device *ndev)
{
 int ret;

 if (net_device->send_buf_gpadl_handle) {
  ret = vmbus_teardown_gpadl(device->channel,
        net_device->send_buf_gpadl_handle);




  if (ret != 0) {
   netdev_err(ndev,
       "unable to teardown send buffer's gpadl\n");
   return;
  }
  net_device->send_buf_gpadl_handle = 0;
 }
}
