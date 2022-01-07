
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock_fprog_kern {int len; int filter; } ;
struct sock_filter {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct sock_fprog_kern*) ;
 struct sock_fprog_kern* kmalloc (int,int ) ;
 int kmemdup (struct sock_filter*,int,int ) ;

__attribute__((used)) static int __fprog_create(struct sock_fprog_kern **pfprog, u32 data_len,
     const void *data)
{
 struct sock_fprog_kern *fprog;
 struct sock_filter *filter = (struct sock_filter *) data;

 if (data_len % sizeof(struct sock_filter))
  return -EINVAL;
 fprog = kmalloc(sizeof(*fprog), GFP_KERNEL);
 if (!fprog)
  return -ENOMEM;
 fprog->filter = kmemdup(filter, data_len, GFP_KERNEL);
 if (!fprog->filter) {
  kfree(fprog);
  return -ENOMEM;
 }
 fprog->len = data_len / sizeof(struct sock_filter);
 *pfprog = fprog;
 return 0;
}
