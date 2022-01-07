
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pucan_options {int options; } ;
struct peak_canfd_priv {int dummy; } ;


 int PUCAN_CMD_SET_EN_OPTION ;
 int cpu_to_le16 (int ) ;
 struct pucan_options* pucan_add_cmd (int ,int ) ;
 int pucan_init_cmd (struct peak_canfd_priv*) ;
 int pucan_write_cmd (struct peak_canfd_priv*) ;

__attribute__((used)) static int pucan_set_options(struct peak_canfd_priv *priv, u16 opt_mask)
{
 struct pucan_options *cmd;

 cmd = pucan_add_cmd(pucan_init_cmd(priv), PUCAN_CMD_SET_EN_OPTION);

 cmd->options = cpu_to_le16(opt_mask);

 return pucan_write_cmd(priv);
}
