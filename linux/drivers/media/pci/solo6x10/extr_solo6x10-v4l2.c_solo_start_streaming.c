
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int dummy; } ;
struct solo_dev {scalar_t__ sequence; } ;


 int solo_start_thread (struct solo_dev*) ;
 struct solo_dev* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int solo_start_streaming(struct vb2_queue *q, unsigned int count)
{
 struct solo_dev *solo_dev = vb2_get_drv_priv(q);

 solo_dev->sequence = 0;
 return solo_start_thread(solo_dev);
}
