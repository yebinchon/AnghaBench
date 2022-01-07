
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GRU_CB_BASE ;
 int GRU_HANDLE_STRIDE ;
 scalar_t__ get_gseg_base_address (void*,int) ;

__attribute__((used)) static inline void *get_gseg_base_address_cb(void *base, int ctxnum, int line)
{
 return (void *)(get_gseg_base_address(base, ctxnum) +
   GRU_CB_BASE + GRU_HANDLE_STRIDE * line);
}
