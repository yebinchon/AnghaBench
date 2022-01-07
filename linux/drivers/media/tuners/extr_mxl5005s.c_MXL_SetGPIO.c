
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_frontend {int dummy; } ;


 int GPIO_1B ;
 int GPIO_3 ;
 int GPIO_3B ;
 int GPIO_4 ;
 int GPIO_4B ;
 scalar_t__ MXL_ControlWrite (struct dvb_frontend*,int ,int) ;

__attribute__((used)) static u16 MXL_SetGPIO(struct dvb_frontend *fe, u8 GPIO_Num, u8 GPIO_Val)
{
 u16 status = 0;

 if (GPIO_Num == 1)
  status += MXL_ControlWrite(fe, GPIO_1B, GPIO_Val ? 0 : 1);



 if (GPIO_Num == 3) {
  if (GPIO_Val == 1) {
   status += MXL_ControlWrite(fe, GPIO_3, 0);
   status += MXL_ControlWrite(fe, GPIO_3B, 0);
  }
  if (GPIO_Val == 0) {
   status += MXL_ControlWrite(fe, GPIO_3, 1);
   status += MXL_ControlWrite(fe, GPIO_3B, 1);
  }
  if (GPIO_Val == 3) {
   status += MXL_ControlWrite(fe, GPIO_3, 0);
   status += MXL_ControlWrite(fe, GPIO_3B, 1);
  }
 }
 if (GPIO_Num == 4) {
  if (GPIO_Val == 1) {
   status += MXL_ControlWrite(fe, GPIO_4, 0);
   status += MXL_ControlWrite(fe, GPIO_4B, 0);
  }
  if (GPIO_Val == 0) {
   status += MXL_ControlWrite(fe, GPIO_4, 1);
   status += MXL_ControlWrite(fe, GPIO_4B, 1);
  }
  if (GPIO_Val == 3) {
   status += MXL_ControlWrite(fe, GPIO_4, 0);
   status += MXL_ControlWrite(fe, GPIO_4B, 1);
  }
 }

 return status;
}
