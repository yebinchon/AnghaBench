
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u1u2 ;
struct r8152 {int dummy; } ;


 int BYTE_EN_SIX_BYTES ;
 int USB_TOLERANCE ;
 int memset (int *,int,int) ;
 int usb_ocp_write (struct r8152*,int ,int ,int,int *) ;

__attribute__((used)) static void r8153_u1u2en(struct r8152 *tp, bool enable)
{
 u8 u1u2[8];

 if (enable)
  memset(u1u2, 0xff, sizeof(u1u2));
 else
  memset(u1u2, 0x00, sizeof(u1u2));

 usb_ocp_write(tp, USB_TOLERANCE, BYTE_EN_SIX_BYTES, sizeof(u1u2), u1u2);
}
