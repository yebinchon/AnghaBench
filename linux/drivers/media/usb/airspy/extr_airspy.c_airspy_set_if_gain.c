
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct airspy {int dev; TYPE_2__* if_gain; } ;
struct TYPE_3__ {int val; } ;
struct TYPE_4__ {int val; TYPE_1__ cur; } ;


 int CMD_SET_VGA_GAIN ;
 int airspy_ctrl_msg (struct airspy*,int ,int ,int ,int *,int) ;
 int dev_dbg (int ,char*,int,...) ;

__attribute__((used)) static int airspy_set_if_gain(struct airspy *s)
{
 int ret;
 u8 u8tmp;

 dev_dbg(s->dev, "val=%d->%d\n", s->if_gain->cur.val, s->if_gain->val);

 ret = airspy_ctrl_msg(s, CMD_SET_VGA_GAIN, 0, s->if_gain->val,
   &u8tmp, 1);
 if (ret)
  dev_dbg(s->dev, "failed=%d\n", ret);

 return ret;
}
