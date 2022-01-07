
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int frequency; scalar_t__ tuner; } ;
struct saa7164_port {int freq; } ;


 int EINVAL ;

int saa7164_g_frequency(struct saa7164_port *port, struct v4l2_frequency *f)
{
 if (f->tuner)
  return -EINVAL;

 f->frequency = port->freq;
 return 0;
}
