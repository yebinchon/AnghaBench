
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au0828_dev {int dummy; } ;


 int au0828_write (struct au0828_dev*,int,int) ;

__attribute__((used)) static void au0828_stop_transport(struct au0828_dev *dev, int full_stop)
{
 if (full_stop) {
  au0828_write(dev, 0x608, 0x00);
  au0828_write(dev, 0x609, 0x00);
  au0828_write(dev, 0x60a, 0x00);
 }
 au0828_write(dev, 0x60b, 0x00);
}
