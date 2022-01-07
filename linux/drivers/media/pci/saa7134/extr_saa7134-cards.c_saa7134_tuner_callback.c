
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dev {int tuner_type; } ;


 int EINVAL ;



 int pr_err (char*) ;
 int saa7134_tda8290_callback (struct saa7134_dev*,int,int) ;
 int saa7134_xc2028_callback (struct saa7134_dev*,int,int) ;
 int saa7134_xc5000_callback (struct saa7134_dev*,int,int) ;

int saa7134_tuner_callback(void *priv, int component, int command, int arg)
{
 struct saa7134_dev *dev = priv;

 if (dev != ((void*)0)) {
  switch (dev->tuner_type) {
  case 130:
   return saa7134_tda8290_callback(dev, command, arg);
  case 129:
   return saa7134_xc2028_callback(dev, command, arg);
  case 128:
   return saa7134_xc5000_callback(dev, command, arg);
  }
 } else {
  pr_err("saa7134: Error - device struct undefined.\n");
  return -EINVAL;
 }
 return -EINVAL;
}
