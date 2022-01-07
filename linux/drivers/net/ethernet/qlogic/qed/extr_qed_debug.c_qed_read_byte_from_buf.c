
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static u8 qed_read_byte_from_buf(void *buf, u32 *offset)
{
 return ((u8 *)buf)[(*offset)++];
}
