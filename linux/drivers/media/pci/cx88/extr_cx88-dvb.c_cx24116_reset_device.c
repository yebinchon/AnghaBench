
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend {TYPE_1__* dvb; } ;
struct cx88_core {int dummy; } ;
struct cx8802_dev {struct cx88_core* core; } ;
struct TYPE_2__ {struct cx8802_dev* priv; } ;


 int MO_SRST_IO ;
 int cx_write (int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int cx24116_reset_device(struct dvb_frontend *fe)
{
 struct cx8802_dev *dev = fe->dvb->priv;
 struct cx88_core *core = dev->core;



 cx_write(MO_SRST_IO, 0);
 usleep_range(10000, 20000);

 cx_write(MO_SRST_IO, 1);
 usleep_range(10000, 20000);

 return 0;
}
