
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int dummy; } ;
struct saa7164_encoder_fh {int port; } ;
struct file {struct saa7164_encoder_fh* private_data; } ;


 int saa7164_g_frequency (int ,struct v4l2_frequency*) ;

__attribute__((used)) static int vidioc_g_frequency(struct file *file, void *priv,
 struct v4l2_frequency *f)
{
 struct saa7164_encoder_fh *fh = file->private_data;

 return saa7164_g_frequency(fh->port, f);
}
