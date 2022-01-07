
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_can_classdev {int dummy; } ;


 int TCAN4X5X_CLEAR_ALL_INT ;
 int TCAN4X5X_ENABLE_MCAN_INT ;
 int TCAN4X5X_ERROR_STATUS ;
 int TCAN4X5X_INT_FLAGS ;
 int TCAN4X5X_MCAN_INT_REG ;
 int TCAN4X5X_STATUS ;
 int tcan4x5x_write_tcan_reg (struct m_can_classdev*,int ,int ) ;

__attribute__((used)) static int tcan4x5x_clear_interrupts(struct m_can_classdev *cdev)
{
 int ret;

 ret = tcan4x5x_write_tcan_reg(cdev, TCAN4X5X_STATUS,
          TCAN4X5X_CLEAR_ALL_INT);
 if (ret)
  return ret;

 ret = tcan4x5x_write_tcan_reg(cdev, TCAN4X5X_MCAN_INT_REG,
          TCAN4X5X_ENABLE_MCAN_INT);
 if (ret)
  return ret;

 ret = tcan4x5x_write_tcan_reg(cdev, TCAN4X5X_INT_FLAGS,
          TCAN4X5X_CLEAR_ALL_INT);
 if (ret)
  return ret;

 ret = tcan4x5x_write_tcan_reg(cdev, TCAN4X5X_ERROR_STATUS,
          TCAN4X5X_CLEAR_ALL_INT);
 if (ret)
  return ret;

 return ret;
}
