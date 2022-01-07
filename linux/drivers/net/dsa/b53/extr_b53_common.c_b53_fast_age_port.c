
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b53_device {int dummy; } ;


 int B53_CTRL_PAGE ;
 int B53_FAST_AGE_PORT_CTRL ;
 int FAST_AGE_PORT ;
 int b53_flush_arl (struct b53_device*,int ) ;
 int b53_write8 (struct b53_device*,int ,int ,int) ;

__attribute__((used)) static int b53_fast_age_port(struct b53_device *dev, int port)
{
 b53_write8(dev, B53_CTRL_PAGE, B53_FAST_AGE_PORT_CTRL, port);

 return b53_flush_arl(dev, FAST_AGE_PORT);
}
