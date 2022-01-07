
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_pdata {int hw_ops; int desc_ops; } ;


 int xlgmac_init_desc_ops (int *) ;
 int xlgmac_init_hw_ops (int *) ;

__attribute__((used)) static void xlgmac_init_all_ops(struct xlgmac_pdata *pdata)
{
 xlgmac_init_desc_ops(&pdata->desc_ops);
 xlgmac_init_hw_ops(&pdata->hw_ops);
}
