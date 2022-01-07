
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct get_set_mib {int size; void* index; void* type; } ;
struct atmel_private {int dummy; } ;


 scalar_t__ CMD_BLOCK_PARAMETERS_OFFSET ;
 int CMD_Get_MIB_Vars ;
 scalar_t__ MIB_HEADER_SIZE ;
 int atmel_co (struct atmel_private*,scalar_t__) ;
 void* atmel_rmem8 (struct atmel_private*,int ) ;
 int atmel_send_command_wait (struct atmel_private*,int ,struct get_set_mib*,scalar_t__) ;

__attribute__((used)) static u8 atmel_get_mib8(struct atmel_private *priv, u8 type, u8 index)
{
 struct get_set_mib m;
 m.type = type;
 m.size = 1;
 m.index = index;

 atmel_send_command_wait(priv, CMD_Get_MIB_Vars, &m, MIB_HEADER_SIZE + 1);
 return atmel_rmem8(priv, atmel_co(priv, CMD_BLOCK_PARAMETERS_OFFSET + MIB_HEADER_SIZE));
}
