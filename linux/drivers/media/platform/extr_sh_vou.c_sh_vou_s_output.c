
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int sh_vou_s_output(struct file *file, void *fh, unsigned int i)
{
 return i ? -EINVAL : 0;
}
