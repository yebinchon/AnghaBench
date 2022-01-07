
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static inline u32 iwl_cmd_id(u8 opcode, u8 groupid, u8 version)
{
 return opcode + (groupid << 8) + (version << 16);
}
