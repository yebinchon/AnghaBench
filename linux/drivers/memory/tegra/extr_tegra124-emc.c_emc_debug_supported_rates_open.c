
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_private; } ;
struct file {int dummy; } ;


 int emc_debug_supported_rates_show ;
 int single_open (struct file*,int ,int ) ;

__attribute__((used)) static int emc_debug_supported_rates_open(struct inode *inode,
       struct file *file)
{
 return single_open(file, emc_debug_supported_rates_show,
      inode->i_private);
}
