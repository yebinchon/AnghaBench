
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {struct saa7134_dmaqueue* drv_priv; } ;
struct saa7134_dmaqueue {struct saa7134_dev* dev; } ;
struct saa7134_dev {scalar_t__ empress_started; } ;


 int SAA7134_AUDIO_MUTE_CTRL ;
 int SAA7134_SPECIAL_MODE ;
 int msleep (int) ;
 int saa7134_ts_stop_streaming (struct vb2_queue*) ;
 int saa_readb (int ) ;
 int saa_writeb (int ,int) ;

__attribute__((used)) static void stop_streaming(struct vb2_queue *vq)
{
 struct saa7134_dmaqueue *dmaq = vq->drv_priv;
 struct saa7134_dev *dev = dmaq->dev;

 saa7134_ts_stop_streaming(vq);
 saa_writeb(SAA7134_SPECIAL_MODE, 0x00);
 msleep(20);
 saa_writeb(SAA7134_SPECIAL_MODE, 0x01);
 msleep(100);

 saa_writeb(SAA7134_AUDIO_MUTE_CTRL,
   saa_readb(SAA7134_AUDIO_MUTE_CTRL) | (1 << 6));
 dev->empress_started = 0;
}
