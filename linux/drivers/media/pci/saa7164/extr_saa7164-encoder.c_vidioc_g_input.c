
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7164_encoder_fh {int port; } ;
struct file {struct saa7164_encoder_fh* private_data; } ;


 int saa7164_g_input (int ,unsigned int*) ;

__attribute__((used)) static int vidioc_g_input(struct file *file, void *priv, unsigned int *i)
{
 struct saa7164_encoder_fh *fh = file->private_data;

 return saa7164_g_input(fh->port, i);
}
