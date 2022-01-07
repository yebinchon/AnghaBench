
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static inline u8 iwl_cmd_groupid(u32 cmdid)
{
 return ((cmdid & 0xFF00) >> 8);
}
