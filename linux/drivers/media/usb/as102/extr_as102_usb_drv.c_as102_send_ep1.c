
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct as10x_bus_adapter_t {TYPE_1__* usb_dev; } ;
struct TYPE_3__ {int dev; } ;


 int dev_dbg (int *,char*,int,...) ;
 int usb_bulk_msg (TYPE_1__*,int ,unsigned char*,int,int*,int) ;
 int usb_sndbulkpipe (TYPE_1__*,int) ;

__attribute__((used)) static int as102_send_ep1(struct as10x_bus_adapter_t *bus_adap,
     unsigned char *send_buf,
     int send_buf_len,
     int swap32)
{
 int ret, actual_len;

 ret = usb_bulk_msg(bus_adap->usb_dev,
      usb_sndbulkpipe(bus_adap->usb_dev, 1),
      send_buf, send_buf_len, &actual_len, 200);
 if (ret) {
  dev_dbg(&bus_adap->usb_dev->dev,
   "usb_bulk_msg(send) failed, err %i\n", ret);
  return ret;
 }

 if (actual_len != send_buf_len) {
  dev_dbg(&bus_adap->usb_dev->dev, "only wrote %d of %d bytes\n",
   actual_len, send_buf_len);
  return -1;
 }
 return actual_len;
}
