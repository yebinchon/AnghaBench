
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_fprog_kern {struct sock_fprog_kern* filter; } ;


 int kfree (struct sock_fprog_kern*) ;

__attribute__((used)) static void __fprog_destroy(struct sock_fprog_kern *fprog)
{
 kfree(fprog->filter);
 kfree(fprog);
}
