
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcam_camera {int dev_lock; } ;


 int REG_TWSIC1 ;
 int TWSIC1_ERROR ;
 int TWSIC1_RVALID ;
 int mcam_reg_read (struct mcam_camera*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int cafe_smbus_read_done(struct mcam_camera *mcam)
{
 unsigned long flags;
 int c1;






 udelay(20);
 spin_lock_irqsave(&mcam->dev_lock, flags);
 c1 = mcam_reg_read(mcam, REG_TWSIC1);
 spin_unlock_irqrestore(&mcam->dev_lock, flags);
 return c1 & (TWSIC1_RVALID|TWSIC1_ERROR);
}
