
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcmgenet_priv {int dummy; } ;


 scalar_t__ GENET_IS_V1 (struct bcmgenet_priv*) ;
 int RBUF_FLUSH_CTRL_V1 ;
 int SYS_RBUF_FLUSH_CTRL ;
 int bcmgenet_rbuf_readl (struct bcmgenet_priv*,int ) ;
 int bcmgenet_sys_readl (struct bcmgenet_priv*,int ) ;

__attribute__((used)) static inline u32 bcmgenet_rbuf_ctrl_get(struct bcmgenet_priv *priv)
{
 if (GENET_IS_V1(priv))
  return bcmgenet_rbuf_readl(priv, RBUF_FLUSH_CTRL_V1);
 else
  return bcmgenet_sys_readl(priv, SYS_RBUF_FLUSH_CTRL);
}
