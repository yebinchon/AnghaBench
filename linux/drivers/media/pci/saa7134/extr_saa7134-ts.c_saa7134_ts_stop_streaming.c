
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {struct saa7134_dmaqueue* drv_priv; } ;
struct saa7134_dmaqueue {struct saa7134_dev* dev; } ;
struct saa7134_dev {int dummy; } ;


 int saa7134_stop_streaming (struct saa7134_dev*,struct saa7134_dmaqueue*) ;
 int saa7134_ts_stop (struct saa7134_dev*) ;

void saa7134_ts_stop_streaming(struct vb2_queue *vq)
{
 struct saa7134_dmaqueue *dmaq = vq->drv_priv;
 struct saa7134_dev *dev = dmaq->dev;

 saa7134_ts_stop(dev);
 saa7134_stop_streaming(dev, dmaq);
}
