
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_ioceth {int dummy; } ;


 int call_ioceth_stop_cbfn (struct bna_ioceth*) ;

__attribute__((used)) static void
bna_ioceth_sm_stopped_entry(struct bna_ioceth *ioceth)
{
 call_ioceth_stop_cbfn(ioceth);
}
