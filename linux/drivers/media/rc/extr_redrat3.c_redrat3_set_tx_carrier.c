
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct redrat3_dev {int carrier; struct device* dev; } ;
struct rc_dev {struct redrat3_dev* priv; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int dev_dbg (struct device*,char*,int ) ;

__attribute__((used)) static int redrat3_set_tx_carrier(struct rc_dev *rcdev, u32 carrier)
{
 struct redrat3_dev *rr3 = rcdev->priv;
 struct device *dev = rr3->dev;

 dev_dbg(dev, "Setting modulation frequency to %u", carrier);
 if (carrier == 0)
  return -EINVAL;

 rr3->carrier = carrier;

 return 0;
}
