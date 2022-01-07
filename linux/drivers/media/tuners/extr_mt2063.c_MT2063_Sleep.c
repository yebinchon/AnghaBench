
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;


 int msleep (int) ;

__attribute__((used)) static int MT2063_Sleep(struct dvb_frontend *fe)
{



 msleep(100);

 return 0;
}
