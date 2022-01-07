
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcmgenet_priv {int dummy; } ;


 int CMD_LCL_LOOP_EN ;
 int CMD_SW_RESET ;
 int UMAC_CMD ;
 int bcmgenet_rbuf_ctrl_set (struct bcmgenet_priv*,int ) ;
 int bcmgenet_umac_writel (struct bcmgenet_priv*,int,int ) ;
 int udelay (int) ;

__attribute__((used)) static void reset_umac(struct bcmgenet_priv *priv)
{

 bcmgenet_rbuf_ctrl_set(priv, 0);
 udelay(10);


 bcmgenet_umac_writel(priv, 0, UMAC_CMD);


 bcmgenet_umac_writel(priv, CMD_SW_RESET | CMD_LCL_LOOP_EN, UMAC_CMD);
}
