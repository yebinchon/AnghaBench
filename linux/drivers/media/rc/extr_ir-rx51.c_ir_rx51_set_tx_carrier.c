
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rc_dev {struct ir_rx51* priv; } ;
struct ir_rx51 {int freq; } ;


 int EINVAL ;

__attribute__((used)) static int ir_rx51_set_tx_carrier(struct rc_dev *dev, u32 carrier)
{
 struct ir_rx51 *ir_rx51 = dev->priv;

 if (carrier > 500000 || carrier < 20000)
  return -EINVAL;

 ir_rx51->freq = carrier;

 return 0;
}
