
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iavf_adapter {int * cinst; } ;


 int kfree (int *) ;

__attribute__((used)) static
void iavf_client_del_instance(struct iavf_adapter *adapter)
{
 kfree(adapter->cinst);
 adapter->cinst = ((void*)0);
}
