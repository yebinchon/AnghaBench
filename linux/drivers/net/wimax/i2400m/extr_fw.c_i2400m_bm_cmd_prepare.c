
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2400m_bootrom_header {int data_size; scalar_t__ block_checksum; scalar_t__ target_addr; scalar_t__ command; scalar_t__ payload; } ;


 scalar_t__ cpu_to_le32 (int ) ;
 scalar_t__ i2400m_brh_get_use_checksum (struct i2400m_bootrom_header*) ;

void i2400m_bm_cmd_prepare(struct i2400m_bootrom_header *cmd)
{
 if (i2400m_brh_get_use_checksum(cmd)) {
  int i;
  u32 checksum = 0;
  const u32 *checksum_ptr = (void *) cmd->payload;
  for (i = 0; i < cmd->data_size / 4; i++)
   checksum += cpu_to_le32(*checksum_ptr++);
  checksum += cmd->command + cmd->target_addr + cmd->data_size;
  cmd->block_checksum = cpu_to_le32(checksum);
 }
}
