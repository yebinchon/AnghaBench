
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pucan_wr_err_cnt {scalar_t__ rx_counter; scalar_t__ tx_counter; int sel_mask; } ;
struct peak_canfd_priv {int dummy; } ;


 int PUCAN_CMD_WR_ERR_CNT ;
 int PUCAN_WRERRCNT_RE ;
 int PUCAN_WRERRCNT_TE ;
 int cpu_to_le16 (int) ;
 struct pucan_wr_err_cnt* pucan_add_cmd (int ,int ) ;
 int pucan_init_cmd (struct peak_canfd_priv*) ;
 int pucan_write_cmd (struct peak_canfd_priv*) ;

__attribute__((used)) static int pucan_clr_err_counters(struct peak_canfd_priv *priv)
{
 struct pucan_wr_err_cnt *cmd;

 cmd = pucan_add_cmd(pucan_init_cmd(priv), PUCAN_CMD_WR_ERR_CNT);

 cmd->sel_mask = cpu_to_le16(PUCAN_WRERRCNT_TE | PUCAN_WRERRCNT_RE);
 cmd->tx_counter = 0;
 cmd->rx_counter = 0;

 return pucan_write_cmd(priv);
}
