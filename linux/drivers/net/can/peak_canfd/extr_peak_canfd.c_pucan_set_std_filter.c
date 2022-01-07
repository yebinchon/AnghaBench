
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pucan_std_filter {int mask; int idx; } ;
struct peak_canfd_priv {int dummy; } ;


 int PUCAN_CMD_SET_STD_FILTER ;
 int cpu_to_le32 (int ) ;
 struct pucan_std_filter* pucan_add_cmd (int ,int ) ;
 int pucan_init_cmd (struct peak_canfd_priv*) ;
 int pucan_write_cmd (struct peak_canfd_priv*) ;

__attribute__((used)) static int pucan_set_std_filter(struct peak_canfd_priv *priv, u8 row, u32 mask)
{
 struct pucan_std_filter *cmd;

 cmd = pucan_add_cmd(pucan_init_cmd(priv), PUCAN_CMD_SET_STD_FILTER);
 cmd->idx = row;


 cmd->mask = cpu_to_le32(mask);

 return pucan_write_cmd(priv);
}
