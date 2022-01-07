
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_can_priv {int dummy; } ;


 int PCH_CAN_ALL ;
 int PCH_CAN_STOP ;
 int pch_can_clear_if_buffers (struct pch_can_priv*) ;
 int pch_can_config_rx_tx_buffers (struct pch_can_priv*) ;
 int pch_can_set_int_enables (struct pch_can_priv*,int ) ;
 int pch_can_set_run_mode (struct pch_can_priv*,int ) ;

__attribute__((used)) static void pch_can_init(struct pch_can_priv *priv)
{

 pch_can_set_run_mode(priv, PCH_CAN_STOP);


 pch_can_clear_if_buffers(priv);


 pch_can_config_rx_tx_buffers(priv);


 pch_can_set_int_enables(priv, PCH_CAN_ALL);
}
