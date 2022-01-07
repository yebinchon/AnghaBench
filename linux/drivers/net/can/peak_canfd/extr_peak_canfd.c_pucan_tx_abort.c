
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pucan_tx_abort {int flags; } ;
struct peak_canfd_priv {int dummy; } ;


 int PUCAN_CMD_TX_ABORT ;
 int cpu_to_le16 (int ) ;
 struct pucan_tx_abort* pucan_add_cmd (int ,int ) ;
 int pucan_init_cmd (struct peak_canfd_priv*) ;
 int pucan_write_cmd (struct peak_canfd_priv*) ;

__attribute__((used)) static int pucan_tx_abort(struct peak_canfd_priv *priv, u16 flags)
{
 struct pucan_tx_abort *cmd;

 cmd = pucan_add_cmd(pucan_init_cmd(priv), PUCAN_CMD_TX_ABORT);

 cmd->flags = cpu_to_le16(flags);

 return pucan_write_cmd(priv);
}
