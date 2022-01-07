
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter_entry {int dummy; } ;
struct adapter {int dummy; } ;


 int TCB_T_FLAGS_W ;
 int set_tcb_field (struct adapter*,struct filter_entry*,unsigned int,int ,unsigned long long,unsigned long long,int) ;

__attribute__((used)) static int set_tcb_tflag(struct adapter *adap, struct filter_entry *f,
    unsigned int ftid, unsigned int bit_pos,
    unsigned int val, int no_reply)
{
 return set_tcb_field(adap, f, ftid, TCB_T_FLAGS_W, 1ULL << bit_pos,
        (unsigned long long)val << bit_pos, no_reply);
}
