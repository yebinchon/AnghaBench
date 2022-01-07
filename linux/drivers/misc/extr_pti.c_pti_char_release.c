
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int * private_data; } ;


 int pti_release_masterchannel (int *) ;

__attribute__((used)) static int pti_char_release(struct inode *inode, struct file *filp)
{
 pti_release_masterchannel(filp->private_data);
 filp->private_data = ((void*)0);
 return 0;
}
