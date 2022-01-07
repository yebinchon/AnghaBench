
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 int * instr_cb ;

bool nfp_bpf_supported_opcode(u8 code)
{
 return !!instr_cb[code];
}
