
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;



__attribute__((used)) static int mcam_vidioc_g_input(struct file *filp, void *priv, unsigned int *i)
{
 *i = 0;
 return 0;
}
