
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcan4x5x_priv {int regmap; } ;
struct m_can_classdev {struct tcan4x5x_priv* device_data; } ;


 int regmap_write (int ,int,int) ;

__attribute__((used)) static int tcan4x5x_write_tcan_reg(struct m_can_classdev *cdev,
       int reg, int val)
{
 struct tcan4x5x_priv *priv = cdev->device_data;

 return regmap_write(priv->regmap, reg, val);
}
