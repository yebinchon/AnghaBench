
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct dvb_frontend {int dummy; } ;


 scalar_t__ MXL_ControlWrite_Group (struct dvb_frontend*,int ,int ,int) ;

__attribute__((used)) static u16 MXL_ControlWrite(struct dvb_frontend *fe, u16 ControlNum, u32 value)
{
 u16 status = 0;



 status += MXL_ControlWrite_Group(fe, ControlNum, value, 1);

 status += MXL_ControlWrite_Group(fe, ControlNum, value, 2);




 return status;
}
