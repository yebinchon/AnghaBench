
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;


 int MXL5005_ControlInit (struct dvb_frontend*) ;
 int MXL5005_MXLControlInit (struct dvb_frontend*) ;
 int MXL5005_RegisterInit (struct dvb_frontend*) ;

__attribute__((used)) static void InitTunerControls(struct dvb_frontend *fe)
{
 MXL5005_RegisterInit(fe);
 MXL5005_ControlInit(fe);



}
