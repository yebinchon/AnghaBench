
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int remove_proc_subtree (char*,int *) ;

void gru_proc_exit(void)
{
 remove_proc_subtree("sgi_uv/gru", ((void*)0));
}
