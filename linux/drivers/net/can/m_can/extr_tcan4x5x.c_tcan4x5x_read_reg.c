
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcan4x5x_priv {scalar_t__ reg_offset; int regmap; } ;
struct m_can_classdev {struct tcan4x5x_priv* device_data; } ;


 int regmap_read (int ,scalar_t__,int *) ;

__attribute__((used)) static u32 tcan4x5x_read_reg(struct m_can_classdev *cdev, int reg)
{
 struct tcan4x5x_priv *priv = cdev->device_data;
 u32 val;

 regmap_read(priv->regmap, priv->reg_offset + reg, &val);

 return val;
}
