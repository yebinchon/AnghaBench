
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbnet {int dummy; } ;


 int AX_ACCESS_MAC ;
 int AX_MEDIUM_RECEIVE_EN ;
 int AX_MEDIUM_STATUS_MODE ;
 int ax88179_read_cmd (struct usbnet*,int ,int ,int,int,int *) ;
 int ax88179_write_cmd (struct usbnet*,int ,int ,int,int,int *) ;

__attribute__((used)) static int ax88179_stop(struct usbnet *dev)
{
 u16 tmp16;

 ax88179_read_cmd(dev, AX_ACCESS_MAC, AX_MEDIUM_STATUS_MODE,
    2, 2, &tmp16);
 tmp16 &= ~AX_MEDIUM_RECEIVE_EN;
 ax88179_write_cmd(dev, AX_ACCESS_MAC, AX_MEDIUM_STATUS_MODE,
     2, 2, &tmp16);

 return 0;
}
