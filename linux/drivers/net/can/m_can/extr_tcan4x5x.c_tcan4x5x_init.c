
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcan4x5x_priv {int regmap; } ;
struct m_can_classdev {struct tcan4x5x_priv* device_data; } ;


 int TCAN4X5X_CONFIG ;
 int TCAN4X5X_ENABLE_TCAN_INT ;
 int TCAN4X5X_INT_EN ;
 int TCAN4X5X_MODE_NORMAL ;
 int TCAN4X5X_MODE_SEL_MASK ;
 int m_can_init_ram (struct m_can_classdev*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int tcan4x5x_check_wake (struct tcan4x5x_priv*) ;
 int tcan4x5x_clear_interrupts (struct m_can_classdev*) ;
 int tcan4x5x_write_tcan_reg (struct m_can_classdev*,int ,int ) ;

__attribute__((used)) static int tcan4x5x_init(struct m_can_classdev *cdev)
{
 struct tcan4x5x_priv *tcan4x5x = cdev->device_data;
 int ret;

 tcan4x5x_check_wake(tcan4x5x);

 ret = tcan4x5x_clear_interrupts(cdev);
 if (ret)
  return ret;

 ret = tcan4x5x_write_tcan_reg(cdev, TCAN4X5X_INT_EN,
          TCAN4X5X_ENABLE_TCAN_INT);
 if (ret)
  return ret;

 ret = regmap_update_bits(tcan4x5x->regmap, TCAN4X5X_CONFIG,
     TCAN4X5X_MODE_SEL_MASK, TCAN4X5X_MODE_NORMAL);
 if (ret)
  return ret;


 m_can_init_ram(cdev);

 return ret;
}
