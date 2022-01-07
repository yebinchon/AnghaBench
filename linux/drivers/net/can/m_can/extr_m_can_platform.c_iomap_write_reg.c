
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_can_plat_priv {scalar_t__ base; } ;
struct m_can_classdev {struct m_can_plat_priv* device_data; } ;


 int writel (int,scalar_t__) ;

__attribute__((used)) static int iomap_write_reg(struct m_can_classdev *cdev, int reg, int val)
{
 struct m_can_plat_priv *priv = cdev->device_data;

 writel(val, priv->base + reg);

 return 0;
}
