
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtnet_info {unsigned int curr_queue_pairs; unsigned int xdp_queue_pairs; struct send_queue* sq; } ;
struct send_queue {int dummy; } ;


 unsigned int smp_processor_id () ;

__attribute__((used)) static struct send_queue *virtnet_xdp_sq(struct virtnet_info *vi)
{
 unsigned int qp;

 qp = vi->curr_queue_pairs - vi->xdp_queue_pairs + smp_processor_id();
 return &vi->sq[qp];
}
