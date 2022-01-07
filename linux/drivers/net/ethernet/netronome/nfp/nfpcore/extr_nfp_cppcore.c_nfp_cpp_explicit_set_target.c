
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
typedef int u32 ;
struct TYPE_2__ {void* byte_mask; void* len; int cpp_id; } ;
struct nfp_cpp_explicit {TYPE_1__ cmd; } ;



int nfp_cpp_explicit_set_target(struct nfp_cpp_explicit *expl,
    u32 cpp_id, u8 len, u8 mask)
{
 expl->cmd.cpp_id = cpp_id;
 expl->cmd.len = len;
 expl->cmd.byte_mask = mask;

 return 0;
}
