
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct peak_canfd_priv {int dummy; } ;


 int PUCAN_CMD_RX_BARRIER ;
 int pucan_add_cmd (int ,int ) ;
 int pucan_init_cmd (struct peak_canfd_priv*) ;
 int pucan_write_cmd (struct peak_canfd_priv*) ;

__attribute__((used)) static int pucan_setup_rx_barrier(struct peak_canfd_priv *priv)
{
 pucan_add_cmd(pucan_init_cmd(priv), PUCAN_CMD_RX_BARRIER);

 return pucan_write_cmd(priv);
}
