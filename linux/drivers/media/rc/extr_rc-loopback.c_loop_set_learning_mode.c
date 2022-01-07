
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {struct loopback_dev* priv; } ;
struct loopback_dev {int learning; } ;


 int dprintk (char*,char*) ;

__attribute__((used)) static int loop_set_learning_mode(struct rc_dev *dev, int enable)
{
 struct loopback_dev *lodev = dev->priv;

 if (lodev->learning != enable) {
  dprintk("%sing learning mode\n", enable ? "enter" : "exit");
  lodev->learning = !!enable;
 }

 return 0;
}
