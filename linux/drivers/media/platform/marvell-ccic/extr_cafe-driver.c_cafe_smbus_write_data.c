
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
typedef unsigned int u16 ;
struct mcam_camera {int dev_lock; } ;
struct cafe_camera {int smbus_wait; struct mcam_camera mcam; } ;


 int CAFE_SMBUS_TIMEOUT ;
 int EIO ;
 int REG_TWSIC0 ;
 int REG_TWSIC1 ;
 unsigned int TWSIC0_CLKDIV ;
 unsigned int TWSIC0_EN ;
 unsigned int TWSIC0_OVMAGIC ;
 unsigned int TWSIC0_SID ;
 unsigned int TWSIC0_SID_SHIFT ;
 unsigned int TWSIC1_ADDR ;
 unsigned int TWSIC1_ADDR_SHIFT ;
 unsigned int TWSIC1_ERROR ;
 unsigned int TWSIC1_WSTAT ;
 int cafe_smbus_write_done (struct mcam_camera*) ;
 int cam_err (struct cafe_camera*,char*,unsigned int,unsigned int,unsigned int) ;
 unsigned int mcam_reg_read (struct mcam_camera*,int ) ;
 int mcam_reg_write (struct mcam_camera*,int ,unsigned int) ;
 int mdelay (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_event_timeout (int ,int ,int ) ;

__attribute__((used)) static int cafe_smbus_write_data(struct cafe_camera *cam,
  u16 addr, u8 command, u8 value)
{
 unsigned int rval;
 unsigned long flags;
 struct mcam_camera *mcam = &cam->mcam;

 spin_lock_irqsave(&mcam->dev_lock, flags);
 rval = TWSIC0_EN | ((addr << TWSIC0_SID_SHIFT) & TWSIC0_SID);
 rval |= TWSIC0_OVMAGIC;



 rval |= TWSIC0_CLKDIV;
 mcam_reg_write(mcam, REG_TWSIC0, rval);
 (void) mcam_reg_read(mcam, REG_TWSIC1);
 rval = value | ((command << TWSIC1_ADDR_SHIFT) & TWSIC1_ADDR);
 mcam_reg_write(mcam, REG_TWSIC1, rval);
 spin_unlock_irqrestore(&mcam->dev_lock, flags);
 mdelay(2);
 wait_event_timeout(cam->smbus_wait, cafe_smbus_write_done(mcam),
   CAFE_SMBUS_TIMEOUT);

 spin_lock_irqsave(&mcam->dev_lock, flags);
 rval = mcam_reg_read(mcam, REG_TWSIC1);
 spin_unlock_irqrestore(&mcam->dev_lock, flags);

 if (rval & TWSIC1_WSTAT) {
  cam_err(cam, "SMBUS write (%02x/%02x/%02x) timed out\n", addr,
    command, value);
  return -EIO;
 }
 if (rval & TWSIC1_ERROR) {
  cam_err(cam, "SMBUS write (%02x/%02x/%02x) error\n", addr,
    command, value);
  return -EIO;
 }
 return 0;
}
