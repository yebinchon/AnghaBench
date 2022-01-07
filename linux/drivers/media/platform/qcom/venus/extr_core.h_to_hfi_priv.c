
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_core {void* priv; } ;



__attribute__((used)) static inline void *to_hfi_priv(struct venus_core *core)
{
 return core->priv;
}
