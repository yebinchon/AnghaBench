
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 scalar_t__ IS_ERR (int ) ;
 int kthread_run (int ,int *,char*) ;
 int pvr2_context_thread_func ;
 int pvr2_context_thread_ptr ;

int pvr2_context_global_init(void)
{
 pvr2_context_thread_ptr = kthread_run(pvr2_context_thread_func,
           ((void*)0),
           "pvrusb2-context");
 return IS_ERR(pvr2_context_thread_ptr) ? -ENOMEM : 0;
}
