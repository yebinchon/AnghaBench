
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au0828_dev {int dummy; } ;


 int AU0828_AUDIOCTRL_50C ;
 int au0828_writereg (struct au0828_dev*,int ,int) ;

__attribute__((used)) static int au0828_i2s_init(struct au0828_dev *dev)
{

 au0828_writereg(dev, AU0828_AUDIOCTRL_50C, 0x01);
 return 0;
}
