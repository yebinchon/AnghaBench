
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sta_id_modify {int dummy; } ;
struct il_addsta_cmd {int sleep_tx_count; int add_immediate_ba_ssn; int remove_immediate_ba_tid; int add_immediate_ba_tid; int tid_disable_tx; int station_flags_msk; int station_flags; int key; int sta; int mode; } ;
struct il4965_keyinfo {int dummy; } ;
struct il4965_addsta_cmd {void* reserved2; void* reserved1; int sleep_tx_count; int add_immediate_ba_ssn; int remove_immediate_ba_tid; int add_immediate_ba_tid; int tid_disable_tx; int station_flags_msk; int station_flags; int key; int sta; int mode; } ;


 void* cpu_to_le16 (int ) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static u16
il4965_build_addsta_hcmd(const struct il_addsta_cmd *cmd, u8 * data)
{
 struct il4965_addsta_cmd *addsta = (struct il4965_addsta_cmd *)data;
 addsta->mode = cmd->mode;
 memcpy(&addsta->sta, &cmd->sta, sizeof(struct sta_id_modify));
 memcpy(&addsta->key, &cmd->key, sizeof(struct il4965_keyinfo));
 addsta->station_flags = cmd->station_flags;
 addsta->station_flags_msk = cmd->station_flags_msk;
 addsta->tid_disable_tx = cmd->tid_disable_tx;
 addsta->add_immediate_ba_tid = cmd->add_immediate_ba_tid;
 addsta->remove_immediate_ba_tid = cmd->remove_immediate_ba_tid;
 addsta->add_immediate_ba_ssn = cmd->add_immediate_ba_ssn;
 addsta->sleep_tx_count = cmd->sleep_tx_count;
 addsta->reserved1 = cpu_to_le16(0);
 addsta->reserved2 = cpu_to_le16(0);

 return (u16) sizeof(struct il4965_addsta_cmd);
}
