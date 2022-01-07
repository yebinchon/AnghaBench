
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rcar_csi2 {scalar_t__ base; } ;


 int ioread32 (scalar_t__) ;

__attribute__((used)) static u32 rcsi2_read(struct rcar_csi2 *priv, unsigned int reg)
{
 return ioread32(priv->base + reg);
}
