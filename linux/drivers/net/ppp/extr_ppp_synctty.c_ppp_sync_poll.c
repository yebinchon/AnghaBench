
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;



__attribute__((used)) static __poll_t
ppp_sync_poll(struct tty_struct *tty, struct file *file, poll_table *wait)
{
 return 0;
}
