
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct airspy {int dev; TYPE_4__* mixer_gain; TYPE_3__* mixer_gain_auto; } ;
struct TYPE_6__ {int val; } ;
struct TYPE_8__ {int val; TYPE_2__ cur; } ;
struct TYPE_5__ {int val; } ;
struct TYPE_7__ {int val; TYPE_1__ cur; } ;


 int CMD_SET_MIXER_AGC ;
 int CMD_SET_MIXER_GAIN ;
 int airspy_ctrl_msg (struct airspy*,int ,int ,int,int *,int) ;
 int dev_dbg (int ,char*,int,...) ;

__attribute__((used)) static int airspy_set_mixer_gain(struct airspy *s)
{
 int ret;
 u8 u8tmp;

 dev_dbg(s->dev, "mixer auto=%d->%d val=%d->%d\n",
   s->mixer_gain_auto->cur.val, s->mixer_gain_auto->val,
   s->mixer_gain->cur.val, s->mixer_gain->val);

 ret = airspy_ctrl_msg(s, CMD_SET_MIXER_AGC, 0, s->mixer_gain_auto->val,
   &u8tmp, 1);
 if (ret)
  goto err;

 if (s->mixer_gain_auto->val == 0) {
  ret = airspy_ctrl_msg(s, CMD_SET_MIXER_GAIN, 0,
    s->mixer_gain->val, &u8tmp, 1);
  if (ret)
   goto err;
 }
err:
 if (ret)
  dev_dbg(s->dev, "failed=%d\n", ret);

 return ret;
}
