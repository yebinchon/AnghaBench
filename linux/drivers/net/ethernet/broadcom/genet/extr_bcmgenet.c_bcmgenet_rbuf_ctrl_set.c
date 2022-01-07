
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcmgenet_priv {int dummy; } ;


 scalar_t__ GENET_IS_V1 (struct bcmgenet_priv*) ;
 int RBUF_FLUSH_CTRL_V1 ;
 int SYS_RBUF_FLUSH_CTRL ;
 int bcmgenet_rbuf_writel (struct bcmgenet_priv*,int ,int ) ;
 int bcmgenet_sys_writel (struct bcmgenet_priv*,int ,int ) ;

__attribute__((used)) static inline void bcmgenet_rbuf_ctrl_set(struct bcmgenet_priv *priv, u32 val)
{
 if (GENET_IS_V1(priv))
  bcmgenet_rbuf_writel(priv, val, RBUF_FLUSH_CTRL_V1);
 else
  bcmgenet_sys_writel(priv, val, SYS_RBUF_FLUSH_CTRL);
}
