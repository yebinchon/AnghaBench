
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct v4l2_subdev {TYPE_1__* v4l2_dev; } ;
struct timing {int vdelay; int vactive; int hdelay; int hactive; int hscale; } ;
struct bt819 {int norm; } ;
struct TYPE_2__ {int * notify; } ;


 int BT819_FIFO_RESET_HIGH ;
 int BT819_FIFO_RESET_LOW ;
 int EINVAL ;
 int V4L2_STD_NTSC ;
 int V4L2_STD_PAL ;
 int bt819_setbit (struct bt819*,int,int,int) ;
 int bt819_write (struct bt819*,int,int) ;
 int debug ;
 struct timing* timing_data ;
 struct bt819* to_bt819 (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,unsigned long long) ;
 int v4l2_err (struct v4l2_subdev*,char*) ;
 int v4l2_subdev_notify (struct v4l2_subdev*,int ,int *) ;

__attribute__((used)) static int bt819_s_std(struct v4l2_subdev *sd, v4l2_std_id std)
{
 struct bt819 *decoder = to_bt819(sd);
 struct timing *timing = ((void*)0);

 v4l2_dbg(1, debug, sd, "set norm %llx\n", (unsigned long long)std);

 if (sd->v4l2_dev == ((void*)0) || sd->v4l2_dev->notify == ((void*)0))
  v4l2_err(sd, "no notify found!\n");

 if (std & V4L2_STD_NTSC) {
  v4l2_subdev_notify(sd, BT819_FIFO_RESET_LOW, ((void*)0));
  bt819_setbit(decoder, 0x01, 0, 1);
  bt819_setbit(decoder, 0x01, 1, 0);
  bt819_setbit(decoder, 0x01, 5, 0);
  bt819_write(decoder, 0x18, 0x68);
  bt819_write(decoder, 0x19, 0x5d);

  timing = &timing_data[1];
 } else if (std & V4L2_STD_PAL) {
  v4l2_subdev_notify(sd, BT819_FIFO_RESET_LOW, ((void*)0));
  bt819_setbit(decoder, 0x01, 0, 1);
  bt819_setbit(decoder, 0x01, 1, 1);
  bt819_setbit(decoder, 0x01, 5, 1);
  bt819_write(decoder, 0x18, 0x7f);
  bt819_write(decoder, 0x19, 0x72);

  timing = &timing_data[0];
 } else {
  v4l2_dbg(1, debug, sd, "unsupported norm %llx\n",
    (unsigned long long)std);
  return -EINVAL;
 }
 bt819_write(decoder, 0x03,
   (((timing->vdelay >> 8) & 0x03) << 6) |
   (((timing->vactive >> 8) & 0x03) << 4) |
   (((timing->hdelay >> 8) & 0x03) << 2) |
   ((timing->hactive >> 8) & 0x03));
 bt819_write(decoder, 0x04, timing->vdelay & 0xff);
 bt819_write(decoder, 0x05, timing->vactive & 0xff);
 bt819_write(decoder, 0x06, timing->hdelay & 0xff);
 bt819_write(decoder, 0x07, timing->hactive & 0xff);
 bt819_write(decoder, 0x08, (timing->hscale >> 8) & 0xff);
 bt819_write(decoder, 0x09, timing->hscale & 0xff);
 decoder->norm = std;
 v4l2_subdev_notify(sd, BT819_FIFO_RESET_HIGH, ((void*)0));
 return 0;
}
