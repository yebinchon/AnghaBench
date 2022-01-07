
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int pr_info (char*) ;

__attribute__((used)) static __poll_t cosa_poll(struct file *file, poll_table *poll)
{
 pr_info("cosa_poll is here\n");
 return 0;
}
