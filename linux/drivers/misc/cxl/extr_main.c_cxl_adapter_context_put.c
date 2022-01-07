
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl {int contexts_num; } ;


 int atomic_dec_if_positive (int *) ;

void cxl_adapter_context_put(struct cxl *adapter)
{
 atomic_dec_if_positive(&adapter->contexts_num);
}
