
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usbnet {int dummy; } ;


 int aqc111_read_cmd (struct usbnet*,int ,int ,int ,int,int *) ;
 int le16_to_cpus (int *) ;

__attribute__((used)) static int aqc111_read16_cmd(struct usbnet *dev, u8 cmd, u16 value,
        u16 index, u16 *data)
{
 int ret = 0;

 ret = aqc111_read_cmd(dev, cmd, value, index, sizeof(*data), data);
 le16_to_cpus(data);

 return ret;
}
