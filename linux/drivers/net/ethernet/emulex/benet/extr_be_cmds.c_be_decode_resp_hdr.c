
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
typedef void be_cmd_resp_hdr ;



__attribute__((used)) static struct be_cmd_resp_hdr *be_decode_resp_hdr(u32 tag0, u32 tag1)
{
 unsigned long addr;

 addr = tag1;
 addr = ((addr << 16) << 16) | tag0;
 return (void *)addr;
}
