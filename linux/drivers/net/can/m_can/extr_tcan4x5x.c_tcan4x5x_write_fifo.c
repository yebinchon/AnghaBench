
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcan4x5x_priv {scalar_t__ mram_start; int regmap; } ;
struct m_can_classdev {struct tcan4x5x_priv* device_data; } ;


 int regmap_write (int ,scalar_t__,int) ;

__attribute__((used)) static int tcan4x5x_write_fifo(struct m_can_classdev *cdev,
          int addr_offset, int val)
{
 struct tcan4x5x_priv *priv = cdev->device_data;

 return regmap_write(priv->regmap, priv->mram_start + addr_offset, val);
}
