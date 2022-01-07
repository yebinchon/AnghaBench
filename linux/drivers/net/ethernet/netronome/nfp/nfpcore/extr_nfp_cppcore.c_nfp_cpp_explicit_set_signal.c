
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct TYPE_2__ {void* signal_ref; void* signal_master; } ;
struct nfp_cpp_explicit {TYPE_1__ cmd; } ;



int nfp_cpp_explicit_set_signal(struct nfp_cpp_explicit *expl,
    u8 signal_master, u8 signal_ref)
{
 expl->cmd.signal_master = signal_master;
 expl->cmd.signal_ref = signal_ref;

 return 0;
}
