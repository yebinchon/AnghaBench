
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_frequency {int dummy; } ;
struct saa7164_vbi_fh {TYPE_1__* port; } ;
struct file {struct saa7164_vbi_fh* private_data; } ;
struct TYPE_2__ {int enc_port; } ;


 int saa7164_s_frequency (int ,struct v4l2_frequency const*) ;
 int saa7164_vbi_initialize (TYPE_1__*) ;

__attribute__((used)) static int vidioc_s_frequency(struct file *file, void *priv,
 const struct v4l2_frequency *f)
{
 struct saa7164_vbi_fh *fh = file->private_data;
 int ret = saa7164_s_frequency(fh->port->enc_port, f);

 if (ret == 0)
  saa7164_vbi_initialize(fh->port);
 return ret;
}
