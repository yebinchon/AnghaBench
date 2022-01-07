
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int udev; } ;


 int OPERA_READ_MSG ;
 int OPERA_WRITE_MSG ;
 int READ_MAC_ADDR ;
 int opera1_xilinx_rw (int ,int,int,int *,int,int ) ;

__attribute__((used)) static int opera1_read_mac_address(struct dvb_usb_device *d, u8 mac[6])
{
 u8 command[] = { READ_MAC_ADDR };
 opera1_xilinx_rw(d->udev, 0xb1, 0xa0, command, 1, OPERA_WRITE_MSG);
 opera1_xilinx_rw(d->udev, 0xb1, 0xa1, mac, 6, OPERA_READ_MSG);
 return 0;
}
