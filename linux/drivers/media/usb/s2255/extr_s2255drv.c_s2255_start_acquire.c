
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* frame; } ;
struct TYPE_5__ {int v4l2_dev; } ;
struct s2255_vc {size_t idx; int last_frame; TYPE_3__ buffer; scalar_t__ cur_frame; scalar_t__ bad_payload; TYPE_1__ vdev; } ;
struct s2255_dev {int cmdlock; TYPE_4__* udev; scalar_t__* cmdbuf; } ;
typedef scalar_t__ __le32 ;
struct TYPE_8__ {int dev; } ;
struct TYPE_6__ {scalar_t__ cur_size; scalar_t__ ulState; } ;


 scalar_t__ CMD_START ;
 unsigned long* G_chnmap ;
 scalar_t__ IN_DATA_TOKEN ;
 int SYS_FRAMES ;
 scalar_t__ cpu_to_le32 (unsigned long) ;
 int dev_err (int *,char*) ;
 int dprintk (struct s2255_dev*,int,char*,size_t,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int s2255_write_config (TYPE_4__*,unsigned char*,int) ;
 struct s2255_dev* to_s2255_dev (int ) ;

__attribute__((used)) static int s2255_start_acquire(struct s2255_vc *vc)
{
 int res;
 unsigned long chn_rev;
 int j;
 struct s2255_dev *dev = to_s2255_dev(vc->vdev.v4l2_dev);
 __le32 *buffer = dev->cmdbuf;

 mutex_lock(&dev->cmdlock);
 chn_rev = G_chnmap[vc->idx];
 vc->last_frame = -1;
 vc->bad_payload = 0;
 vc->cur_frame = 0;
 for (j = 0; j < SYS_FRAMES; j++) {
  vc->buffer.frame[j].ulState = 0;
  vc->buffer.frame[j].cur_size = 0;
 }


 buffer[0] = IN_DATA_TOKEN;
 buffer[1] = (__le32) cpu_to_le32(chn_rev);
 buffer[2] = CMD_START;
 res = s2255_write_config(dev->udev, (unsigned char *)buffer, 512);
 if (res != 0)
  dev_err(&dev->udev->dev, "CMD_START error\n");

 dprintk(dev, 2, "start acquire exit[%d] %d\n", vc->idx, res);
 mutex_unlock(&dev->cmdlock);
 return res;
}
