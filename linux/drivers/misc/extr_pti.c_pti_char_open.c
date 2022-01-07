
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pti_masterchannel {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct pti_masterchannel* private_data; } ;


 int ENOMEM ;
 struct pti_masterchannel* pti_request_masterchannel (int ,int *) ;

__attribute__((used)) static int pti_char_open(struct inode *inode, struct file *filp)
{
 struct pti_masterchannel *mc;







 mc = pti_request_masterchannel(0, ((void*)0));
 if (mc == ((void*)0))
  return -ENOMEM;
 filp->private_data = mc;
 return 0;
}
