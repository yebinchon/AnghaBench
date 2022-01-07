
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct m_can_plat_priv {scalar_t__ base; } ;
struct m_can_classdev {struct m_can_plat_priv* device_data; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static u32 iomap_read_reg(struct m_can_classdev *cdev, int reg)
{
 struct m_can_plat_priv *priv = cdev->device_data;

 return readl(priv->base + reg);
}
