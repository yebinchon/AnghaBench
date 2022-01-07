
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rcar_csi2 {scalar_t__ base; } ;


 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void rcsi2_write(struct rcar_csi2 *priv, unsigned int reg, u32 data)
{
 iowrite32(data, priv->base + reg);
}
