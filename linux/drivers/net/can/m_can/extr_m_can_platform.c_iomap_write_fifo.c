
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_can_plat_priv {scalar_t__ mram_base; } ;
struct m_can_classdev {struct m_can_plat_priv* device_data; } ;


 int writel (int,scalar_t__) ;

__attribute__((used)) static int iomap_write_fifo(struct m_can_classdev *cdev, int offset, int val)
{
 struct m_can_plat_priv *priv = cdev->device_data;

 writel(val, priv->mram_base + offset);

 return 0;
}
