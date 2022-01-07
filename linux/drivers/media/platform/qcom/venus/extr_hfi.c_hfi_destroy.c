
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_core {int dummy; } ;


 int venus_hfi_destroy (struct venus_core*) ;

void hfi_destroy(struct venus_core *core)
{
 venus_hfi_destroy(core);
}
