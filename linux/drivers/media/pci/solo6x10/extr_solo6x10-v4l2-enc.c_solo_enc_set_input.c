
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int solo_enc_set_input(struct file *file, void *priv,
         unsigned int index)
{
 if (index)
  return -EINVAL;

 return 0;
}
