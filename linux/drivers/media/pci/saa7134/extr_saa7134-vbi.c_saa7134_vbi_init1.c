
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct saa7134_dev* dev; int timeout; int queue; } ;
struct saa7134_dev {TYPE_1__ vbi_q; } ;


 int INIT_LIST_HEAD (int *) ;
 int VIDEO_MAX_FRAME ;
 int saa7134_buffer_timeout ;
 int timer_setup (int *,int ,int ) ;
 int vbibufs ;

int saa7134_vbi_init1(struct saa7134_dev *dev)
{
 INIT_LIST_HEAD(&dev->vbi_q.queue);
 timer_setup(&dev->vbi_q.timeout, saa7134_buffer_timeout, 0);
 dev->vbi_q.dev = dev;

 if (vbibufs < 2)
  vbibufs = 2;
 if (vbibufs > VIDEO_MAX_FRAME)
  vbibufs = VIDEO_MAX_FRAME;
 return 0;
}
