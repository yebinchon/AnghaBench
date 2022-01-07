
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vb2_queue {struct saa7134_dmaqueue* drv_priv; } ;
struct saa7134_dmaqueue {struct saa7134_dev* dev; } ;
struct saa7134_dev {int board; int empress_started; } ;


 int SAA7134_AUDIO_MUTE_CTRL ;



 int core ;
 int init ;
 int saa7134_ts_start_streaming (struct vb2_queue*,unsigned int) ;
 int saa_call_all (struct saa7134_dev*,int ,int ,int) ;
 int saa_readb (int ) ;
 int saa_writeb (int ,int) ;

__attribute__((used)) static int start_streaming(struct vb2_queue *vq, unsigned int count)
{
 struct saa7134_dmaqueue *dmaq = vq->drv_priv;
 struct saa7134_dev *dev = dmaq->dev;
 u32 leading_null_bytes = 0;
 int err;

 err = saa7134_ts_start_streaming(vq, count);
 if (err)
  return err;



 switch (dev->board) {
 case 130:
 case 129:
 case 128:
  leading_null_bytes = 1;
  break;
 }
 saa_call_all(dev, core, init, leading_null_bytes);

 saa_writeb(SAA7134_AUDIO_MUTE_CTRL,
   saa_readb(SAA7134_AUDIO_MUTE_CTRL) & ~(1 << 6));
 dev->empress_started = 1;
 return 0;
}
