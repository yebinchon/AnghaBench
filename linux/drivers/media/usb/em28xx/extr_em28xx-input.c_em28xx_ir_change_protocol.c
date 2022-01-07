
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct rc_dev {struct em28xx_IR* priv; } ;
struct em28xx_IR {struct em28xx* dev; } ;
struct em28xx {int chip_id; TYPE_1__* intf; } ;
struct TYPE_2__ {int dev; } ;
 int EINVAL ;
 int dev_err (int *,char*,int) ;
 int em2860_ir_change_protocol (struct rc_dev*,int *) ;
 int em2874_ir_change_protocol (struct rc_dev*,int *) ;

__attribute__((used)) static int em28xx_ir_change_protocol(struct rc_dev *rc_dev, u64 *rc_proto)
{
 struct em28xx_IR *ir = rc_dev->priv;
 struct em28xx *dev = ir->dev;


 switch (dev->chip_id) {
 case 131:
 case 129:
  return em2860_ir_change_protocol(rc_dev, rc_proto);
 case 128:
 case 130:
 case 133:
 case 132:
  return em2874_ir_change_protocol(rc_dev, rc_proto);
 default:
  dev_err(&ir->dev->intf->dev,
   "Unrecognized em28xx chip id 0x%02x: IR not supported\n",
   dev->chip_id);
  return -EINVAL;
 }
}
