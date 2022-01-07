
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dev {int board; } ;
 int saa7134_tda8290_18271_callback (struct saa7134_dev*,int,int) ;
 int saa7134_tda8290_827x_callback (struct saa7134_dev*,int,int) ;

__attribute__((used)) static int saa7134_tda8290_callback(struct saa7134_dev *dev,
        int command, int arg)
{
 int ret;

 switch (dev->board) {
 case 131:
 case 132:
 case 133:
 case 129:
 case 130:
 case 128:

  ret = saa7134_tda8290_18271_callback(dev, command, arg);
  break;
 default:

  ret = saa7134_tda8290_827x_callback(dev, command, arg);
  break;
 }
 return ret;
}
