
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcam_camera {int dev_lock; } ;


 int GCSR_CCIC_EN ;
 int GCSR_MRC ;
 int GCSR_MRS ;
 int GCSR_SRC ;
 int GCSR_SRS ;
 int GIMSK_CCIC_EN ;
 int REG_GL_CSR ;
 int REG_GL_IMASK ;
 int REG_IRQMASK ;
 int mcam_reg_set_bit (struct mcam_camera*,int ,int ) ;
 int mcam_reg_write (struct mcam_camera*,int,int) ;
 int msleep (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void cafe_ctlr_init(struct mcam_camera *mcam)
{
 unsigned long flags;

 spin_lock_irqsave(&mcam->dev_lock, flags);



 mcam_reg_write(mcam, 0x3038, 0x8);
 mcam_reg_write(mcam, 0x315c, 0x80008);






 mcam_reg_write(mcam, REG_GL_CSR, GCSR_SRS|GCSR_MRS);
 mcam_reg_write(mcam, REG_GL_CSR, GCSR_SRC|GCSR_MRC);
 mcam_reg_write(mcam, REG_GL_CSR, GCSR_SRC|GCSR_MRS);



 spin_unlock_irqrestore(&mcam->dev_lock, flags);
 msleep(5);
 spin_lock_irqsave(&mcam->dev_lock, flags);

 mcam_reg_write(mcam, REG_GL_CSR, GCSR_CCIC_EN|GCSR_SRC|GCSR_MRC);
 mcam_reg_set_bit(mcam, REG_GL_IMASK, GIMSK_CCIC_EN);



 mcam_reg_write(mcam, REG_IRQMASK, 0);
 spin_unlock_irqrestore(&mcam->dev_lock, flags);
}
