
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mvneta_bm {scalar_t__ reg_base; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static u32 mvneta_bm_read(struct mvneta_bm *priv, u32 offset)
{
 return readl(priv->reg_base + offset);
}
