
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {TYPE_1__* f_cred; } ;
struct TYPE_2__ {int user_ns; } ;


 int CAP_NET_ADMIN ;
 int EPERM ;
 int ns_capable (int ,int ) ;

__attribute__((used)) static int ppp_open(struct inode *inode, struct file *file)
{



 if (!ns_capable(file->f_cred->user_ns, CAP_NET_ADMIN))
  return -EPERM;
 return 0;
}
