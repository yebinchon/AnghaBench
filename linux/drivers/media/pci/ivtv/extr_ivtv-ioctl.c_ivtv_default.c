
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int newi2c; } ;
struct ivtv {int sd_video; TYPE_1__ options; } ;
struct file {int dummy; } ;
struct TYPE_4__ {struct ivtv* itv; } ;





 long EBUSY ;
 long ENOTTY ;
 int core ;
 TYPE_2__* fh2id (void*) ;
 long ivtv_decoder_ioctls (struct file*,unsigned int,void*) ;
 int ivtv_reset_ir_gpio (struct ivtv*) ;
 int reset ;
 int v4l2_subdev_call (int ,int ,int ,int ) ;

__attribute__((used)) static long ivtv_default(struct file *file, void *fh, bool valid_prio,
    unsigned int cmd, void *arg)
{
 struct ivtv *itv = fh2id(fh)->itv;

 if (!valid_prio) {
  switch (cmd) {
  case 139:
   return -EBUSY;
  }
 }

 switch (cmd) {
 case 128: {
  u32 val = *(u32 *)arg;

  if ((val == 0 && itv->options.newi2c) || (val & 0x01))
   ivtv_reset_ir_gpio(itv);
  if (val & 0x02)
   v4l2_subdev_call(itv->sd_video, core, reset, 0);
  break;
 }

 case 140:
 case 139:
  return ivtv_decoder_ioctls(file, cmd, (void *)arg);

 default:
  return -ENOTTY;
 }
 return 0;
}
