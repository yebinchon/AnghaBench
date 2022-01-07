
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stk_camera {int dummy; } ;


 int REG_HREF ;
 int REG_HSTART ;
 int REG_HSTOP ;
 int REG_VREF ;
 int REG_VSTART ;
 int REG_VSTOP ;
 int msleep (int) ;
 scalar_t__ stk_sensor_inb (struct stk_camera*,int ,unsigned char*) ;
 int stk_sensor_outb (struct stk_camera*,int ,unsigned char) ;

__attribute__((used)) static int stk_sensor_set_hw(struct stk_camera *dev,
  int hstart, int hstop, int vstart, int vstop)
{
 int ret;
 unsigned char v;





 ret = stk_sensor_outb(dev, REG_HSTART, (hstart >> 3) & 0xff);
 ret += stk_sensor_outb(dev, REG_HSTOP, (hstop >> 3) & 0xff);
 ret += stk_sensor_inb(dev, REG_HREF, &v);
 v = (v & 0xc0) | ((hstop & 0x7) << 3) | (hstart & 0x7);
 msleep(10);
 ret += stk_sensor_outb(dev, REG_HREF, v);



 ret += stk_sensor_outb(dev, REG_VSTART, (vstart >> 3) & 0xff);
 ret += stk_sensor_outb(dev, REG_VSTOP, (vstop >> 3) & 0xff);
 ret += stk_sensor_inb(dev, REG_VREF, &v);
 v = (v & 0xc0) | ((vstop & 0x7) << 3) | (vstart & 0x7);
 msleep(10);
 ret += stk_sensor_outb(dev, REG_VREF, v);
 return ret;
}
