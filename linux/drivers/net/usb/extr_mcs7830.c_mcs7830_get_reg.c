
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbnet {int dummy; } ;


 int MCS7830_RD_BMREQ ;
 int MCS7830_RD_BREQ ;
 int usbnet_read_cmd (struct usbnet*,int ,int ,int,int ,void*,int ) ;

__attribute__((used)) static int mcs7830_get_reg(struct usbnet *dev, u16 index, u16 size, void *data)
{
 return usbnet_read_cmd(dev, MCS7830_RD_BREQ, MCS7830_RD_BMREQ,
    0x0000, index, data, size);
}
