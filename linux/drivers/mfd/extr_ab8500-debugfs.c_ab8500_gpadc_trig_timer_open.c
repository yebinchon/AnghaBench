
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_private; } ;
struct file {int dummy; } ;


 int ab8500_gpadc_trig_timer_print ;
 int single_open (struct file*,int ,int ) ;

__attribute__((used)) static int ab8500_gpadc_trig_timer_open(struct inode *inode, struct file *file)
{
 return single_open(file, ab8500_gpadc_trig_timer_print,
  inode->i_private);
}
