
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct file {int dummy; } ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 int v4l2_ctrl_poll (struct file*,struct poll_table_struct*) ;

__poll_t vivid_radio_rx_poll(struct file *file, struct poll_table_struct *wait)
{
 return EPOLLIN | EPOLLRDNORM | v4l2_ctrl_poll(file, wait);
}
