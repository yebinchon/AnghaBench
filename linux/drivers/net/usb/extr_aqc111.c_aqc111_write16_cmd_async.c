
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef int tmp ;
struct usbnet {int dummy; } ;


 int aqc111_write_cmd_async (struct usbnet*,int ,int ,int ,int,int *) ;
 int cpu_to_le16s (int *) ;

__attribute__((used)) static int aqc111_write16_cmd_async(struct usbnet *dev, u8 cmd, u16 value,
        u16 index, u16 *data)
{
 u16 tmp = *data;

 cpu_to_le16s(&tmp);

 return aqc111_write_cmd_async(dev, cmd, value, index,
          sizeof(tmp), &tmp);
}
