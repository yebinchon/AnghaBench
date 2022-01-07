
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_pf {int * cinst; } ;


 int kfree (int *) ;

__attribute__((used)) static
void i40e_client_del_instance(struct i40e_pf *pf)
{
 kfree(pf->cinst);
 pf->cinst = ((void*)0);
}
