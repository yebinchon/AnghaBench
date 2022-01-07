
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef void* u16 ;
struct mwifiex_private {int dummy; } ;
struct mwifiex_ds_read_eeprom {void* byte_count; int value; void* offset; } ;


 int HostCmd_ACT_GEN_GET ;
 int HostCmd_CMD_802_11_EEPROM_ACCESS ;
 scalar_t__ MAX_EEPROM_DATA ;
 int memcpy (int *,int ,int ) ;
 int min (void*,void*) ;
 int mwifiex_send_cmd (struct mwifiex_private*,int ,int ,int ,struct mwifiex_ds_read_eeprom*,int) ;

int
mwifiex_eeprom_read(struct mwifiex_private *priv, u16 offset, u16 bytes,
      u8 *value)
{
 int ret;
 struct mwifiex_ds_read_eeprom rd_eeprom;

 rd_eeprom.offset = offset;
 rd_eeprom.byte_count = bytes;


 ret = mwifiex_send_cmd(priv, HostCmd_CMD_802_11_EEPROM_ACCESS,
          HostCmd_ACT_GEN_GET, 0, &rd_eeprom, 1);

 if (!ret)
  memcpy(value, rd_eeprom.value, min((u16)MAX_EEPROM_DATA,
         rd_eeprom.byte_count));
 return ret;
}
