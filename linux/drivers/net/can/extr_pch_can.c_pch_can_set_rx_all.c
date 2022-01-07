
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_can_priv {int dummy; } ;


 int PCH_RX_IFREG ;
 int PCH_RX_OBJ_END ;
 int PCH_RX_OBJ_START ;
 int pch_can_set_rxtx (struct pch_can_priv*,int,int,int ) ;

__attribute__((used)) static void pch_can_set_rx_all(struct pch_can_priv *priv, int set)
{
 int i;


 for (i = PCH_RX_OBJ_START; i <= PCH_RX_OBJ_END; i++)
  pch_can_set_rxtx(priv, i, set, PCH_RX_IFREG);
}
