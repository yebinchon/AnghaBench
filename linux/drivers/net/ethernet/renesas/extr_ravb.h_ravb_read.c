
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ravb_private {int addr; } ;
struct net_device {int dummy; } ;
typedef enum ravb_reg { ____Placeholder_ravb_reg } ravb_reg ;


 int ioread32 (int) ;
 struct ravb_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static inline u32 ravb_read(struct net_device *ndev, enum ravb_reg reg)
{
 struct ravb_private *priv = netdev_priv(ndev);

 return ioread32(priv->addr + reg);
}
