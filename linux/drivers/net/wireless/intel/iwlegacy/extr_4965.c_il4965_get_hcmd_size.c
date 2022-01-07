
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct il4965_rxon_cmd {int dummy; } ;




__attribute__((used)) static u16
il4965_get_hcmd_size(u8 cmd_id, u16 len)
{
 switch (cmd_id) {
 case 128:
  return (u16) sizeof(struct il4965_rxon_cmd);
 default:
  return len;
 }
}
