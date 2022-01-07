
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gru_wait_abort_proc (void*) ;

__attribute__((used)) static inline void gru_wait_abort(void *cb)
{
 gru_wait_abort_proc(cb);
}
