
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t3cdev {int neigh_update; int recv; } ;


 int dummy_neigh_update ;
 int rx_offload_blackhole ;

void cxgb3_set_dummy_ops(struct t3cdev *dev)
{
 dev->recv = rx_offload_blackhole;
 dev->neigh_update = dummy_neigh_update;
}
