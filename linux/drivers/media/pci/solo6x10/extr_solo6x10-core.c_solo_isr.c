
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct solo_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SOLO_IRQ_ENCODER ;
 int SOLO_IRQ_G723 ;
 int SOLO_IRQ_IIC ;
 int SOLO_IRQ_P2M (int) ;
 int SOLO_IRQ_PCI_ERR ;
 int SOLO_IRQ_STAT ;
 int SOLO_IRQ_VIDEO_IN ;
 int SOLO_NR_P2M ;
 int solo_enc_v4l2_isr (struct solo_dev*) ;
 int solo_g723_isr (struct solo_dev*) ;
 int solo_i2c_isr (struct solo_dev*) ;
 int solo_p2m_error_isr (struct solo_dev*) ;
 int solo_p2m_isr (struct solo_dev*,int) ;
 int solo_reg_read (struct solo_dev*,int ) ;
 int solo_reg_write (struct solo_dev*,int ,int) ;
 int solo_timer_sync (struct solo_dev*) ;
 int solo_video_in_isr (struct solo_dev*) ;

__attribute__((used)) static irqreturn_t solo_isr(int irq, void *data)
{
 struct solo_dev *solo_dev = data;
 u32 status;
 int i;

 status = solo_reg_read(solo_dev, SOLO_IRQ_STAT);
 if (!status)
  return IRQ_NONE;


 solo_reg_write(solo_dev, SOLO_IRQ_STAT, status);

 if (status & SOLO_IRQ_PCI_ERR)
  solo_p2m_error_isr(solo_dev);

 for (i = 0; i < SOLO_NR_P2M; i++)
  if (status & SOLO_IRQ_P2M(i))
   solo_p2m_isr(solo_dev, i);

 if (status & SOLO_IRQ_IIC)
  solo_i2c_isr(solo_dev);

 if (status & SOLO_IRQ_VIDEO_IN) {
  solo_video_in_isr(solo_dev);
  solo_timer_sync(solo_dev);
 }

 if (status & SOLO_IRQ_ENCODER)
  solo_enc_v4l2_isr(solo_dev);

 if (status & SOLO_IRQ_G723)
  solo_g723_isr(solo_dev);

 return IRQ_HANDLED;
}
