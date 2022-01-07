
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int dummy; } ;
struct stk1160 {int dummy; } ;


 int stk1160_start_streaming (struct stk1160*) ;
 struct stk1160* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int start_streaming(struct vb2_queue *vq, unsigned int count)
{
 struct stk1160 *dev = vb2_get_drv_priv(vq);
 return stk1160_start_streaming(dev);
}
