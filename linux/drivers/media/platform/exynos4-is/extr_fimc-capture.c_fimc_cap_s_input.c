
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int fimc_cap_s_input(struct file *file, void *priv, unsigned int i)
{
 return i == 0 ? i : -EINVAL;
}
