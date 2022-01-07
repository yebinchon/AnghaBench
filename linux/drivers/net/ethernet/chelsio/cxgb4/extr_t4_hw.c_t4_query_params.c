
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int t4_query_params_rw (struct adapter*,unsigned int,unsigned int,unsigned int,unsigned int,int const*,int *,int ,int) ;

int t4_query_params(struct adapter *adap, unsigned int mbox, unsigned int pf,
      unsigned int vf, unsigned int nparams, const u32 *params,
      u32 *val)
{
 return t4_query_params_rw(adap, mbox, pf, vf, nparams, params, val, 0,
      1);
}
