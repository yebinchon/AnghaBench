
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dvb_frontend {int dummy; } ;


 int FRIIO_LED_RUNNING ;
 int FRIIO_LED_STOPPED ;
 int fe_to_d (struct dvb_frontend*) ;
 int friio_ext_ctl (int ,int ,int) ;

__attribute__((used)) static int friio_streaming_ctrl(struct dvb_frontend *fe, int onoff)
{
 u32 led_color;

 led_color = onoff ? FRIIO_LED_RUNNING : FRIIO_LED_STOPPED;
 return friio_ext_ctl(fe_to_d(fe), led_color, 1);
}
