
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
typedef int tmp ;
struct usbnet {int dummy; } ;


 int aqc111_write_cmd (struct usbnet*,int ,int ,int ,int,int *) ;
 int cpu_to_le32s (int *) ;

__attribute__((used)) static int aqc111_write32_cmd(struct usbnet *dev, u8 cmd, u16 value,
         u16 index, u32 *data)
{
 u32 tmp = *data;

 cpu_to_le32s(&tmp);

 return aqc111_write_cmd(dev, cmd, value, index, sizeof(tmp), &tmp);
}
