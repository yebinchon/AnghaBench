
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int data_ref; int data_master; } ;
struct nfp_cpp_explicit {TYPE_1__ cmd; } ;



int nfp_cpp_explicit_set_data(struct nfp_cpp_explicit *expl,
         u8 data_master, u16 data_ref)
{
 expl->cmd.data_master = data_master;
 expl->cmd.data_ref = data_ref;

 return 0;
}
