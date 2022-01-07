
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usbnet {int dummy; } ;


 int __ax88179_write_cmd (struct usbnet*,int ,int,int,int,void*,int ) ;
 int cpu_to_le16s (int*) ;

__attribute__((used)) static int ax88179_write_cmd(struct usbnet *dev, u8 cmd, u16 value, u16 index,
        u16 size, void *data)
{
 int ret;

 if (2 == size) {
  u16 buf;
  buf = *((u16 *)data);
  cpu_to_le16s(&buf);
  ret = __ax88179_write_cmd(dev, cmd, value, index,
       size, &buf, 0);
 } else {
  ret = __ax88179_write_cmd(dev, cmd, value, index,
       size, data, 0);
 }

 return ret;
}
