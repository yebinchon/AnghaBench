
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au0828_dev {int dummy; } ;


 int AU0828_SENSORCTRL_100 ;
 int au0828_writereg (struct au0828_dev*,int ,int) ;
 int dprintk (int,char*) ;

__attribute__((used)) static int au0828_analog_stream_disable(struct au0828_dev *d)
{
 dprintk(1, "au0828_analog_stream_disable called\n");
 au0828_writereg(d, AU0828_SENSORCTRL_100, 0x0);
 return 0;
}
