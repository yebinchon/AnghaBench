
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int dummy; } ;
struct device {int dummy; } ;


 int SDR_CAP_SAMPLES_PER_BUF ;

__attribute__((used)) static int sdr_cap_queue_setup(struct vb2_queue *vq,
         unsigned *nbuffers, unsigned *nplanes,
         unsigned sizes[], struct device *alloc_devs[])
{

 sizes[0] = SDR_CAP_SAMPLES_PER_BUF * 2;
 *nplanes = 1;
 return 0;
}
