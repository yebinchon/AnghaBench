
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_subdev {TYPE_1__* v4l2_dev; } ;
struct bt819 {int input; } ;
struct TYPE_2__ {int * notify; } ;


 int BT819_FIFO_RESET_HIGH ;
 int BT819_FIFO_RESET_LOW ;
 int EINVAL ;
 int bt819_setbit (struct bt819*,int,int,int) ;
 int debug ;
 struct bt819* to_bt819 (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int) ;
 int v4l2_err (struct v4l2_subdev*,char*) ;
 int v4l2_subdev_notify (struct v4l2_subdev*,int ,int *) ;

__attribute__((used)) static int bt819_s_routing(struct v4l2_subdev *sd,
      u32 input, u32 output, u32 config)
{
 struct bt819 *decoder = to_bt819(sd);

 v4l2_dbg(1, debug, sd, "set input %x\n", input);

 if (input > 7)
  return -EINVAL;

 if (sd->v4l2_dev == ((void*)0) || sd->v4l2_dev->notify == ((void*)0))
  v4l2_err(sd, "no notify found!\n");

 if (decoder->input != input) {
  v4l2_subdev_notify(sd, BT819_FIFO_RESET_LOW, ((void*)0));
  decoder->input = input;

  if (decoder->input == 0) {
   bt819_setbit(decoder, 0x0b, 6, 0);
   bt819_setbit(decoder, 0x1a, 1, 1);
  } else {
   bt819_setbit(decoder, 0x0b, 6, 1);
   bt819_setbit(decoder, 0x1a, 1, 0);
  }
  v4l2_subdev_notify(sd, BT819_FIFO_RESET_HIGH, ((void*)0));
 }
 return 0;
}
