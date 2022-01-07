
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s2255_dev {int dummy; } ;


 int msleep (int) ;
 int s2255_vendor_req (struct s2255_dev*,int,int,int,int *,int ,int) ;

__attribute__((used)) static void s2255_reset_dsppower(struct s2255_dev *dev)
{
 s2255_vendor_req(dev, 0x40, 0x0000, 0x0001, ((void*)0), 0, 1);
 msleep(50);
 s2255_vendor_req(dev, 0x50, 0x0000, 0x0000, ((void*)0), 0, 1);
 msleep(600);
 s2255_vendor_req(dev, 0x10, 0x0000, 0x0000, ((void*)0), 0, 1);
 return;
}
