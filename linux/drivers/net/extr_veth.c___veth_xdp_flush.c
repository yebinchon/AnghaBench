
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veth_rq {int rx_notify_masked; int xdp_napi; } ;


 int napi_schedule (int *) ;
 int smp_mb () ;

__attribute__((used)) static void __veth_xdp_flush(struct veth_rq *rq)
{

 smp_mb();
 if (!rq->rx_notify_masked) {
  rq->rx_notify_masked = 1;
  napi_schedule(&rq->xdp_napi);
 }
}
