
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;



__attribute__((used)) static int solo_enc_get_input(struct file *file, void *priv,
         unsigned int *index)
{
 *index = 0;

 return 0;
}
