
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_can_priv {int dummy; } ;


 int PCH_TX_IFREG ;
 int PCH_TX_OBJ_END ;
 int PCH_TX_OBJ_START ;
 int pch_can_set_rxtx (struct pch_can_priv*,int,int,int ) ;

__attribute__((used)) static void pch_can_set_tx_all(struct pch_can_priv *priv, int set)
{
 int i;


 for (i = PCH_TX_OBJ_START; i <= PCH_TX_OBJ_END; i++)
  pch_can_set_rxtx(priv, i, set, PCH_TX_IFREG);
}
