
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;



__attribute__((used)) static u32 qed_read_dword_from_buf(void *buf, u32 *offset)
{
 u32 dword_val = *(u32 *)&((u8 *)buf)[*offset];

 *offset += 4;

 return dword_val;
}
