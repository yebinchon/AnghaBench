
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;

__attribute__((used)) static __poll_t fdtv_ca_io_poll(struct file *file, poll_table *wait)
{
 return EPOLLIN;
}
