
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {struct saa7134_dmaqueue* drv_priv; } ;
struct saa7134_dmaqueue {struct saa7134_dev* dev; } ;
struct TYPE_2__ {int nr_packets; unsigned int nr_bufs; } ;
struct saa7134_dev {TYPE_1__ ts; } ;
struct device {int dummy; } ;


 int TS_PACKET_SIZE ;
 unsigned int saa7134_buffer_count (int,unsigned int) ;

int saa7134_ts_queue_setup(struct vb2_queue *q,
      unsigned int *nbuffers, unsigned int *nplanes,
      unsigned int sizes[], struct device *alloc_devs[])
{
 struct saa7134_dmaqueue *dmaq = q->drv_priv;
 struct saa7134_dev *dev = dmaq->dev;
 int size = TS_PACKET_SIZE * dev->ts.nr_packets;

 if (0 == *nbuffers)
  *nbuffers = dev->ts.nr_bufs;
 *nbuffers = saa7134_buffer_count(size, *nbuffers);
 if (*nbuffers < 3)
  *nbuffers = 3;
 *nplanes = 1;
 sizes[0] = size;
 return 0;
}
