
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usbnet {int dummy; } ;


 int SR_REQ_WR_REG ;
 int usbnet_write_cmd_async (struct usbnet*,int ,int ,int ,int ,void*,int ) ;

__attribute__((used)) static void
sr_write_cmd_async(struct usbnet *dev, u8 cmd, u16 value, u16 index,
     u16 size, void *data)
{
 usbnet_write_cmd_async(dev, cmd, SR_REQ_WR_REG, value, index, data,
          size);
}
