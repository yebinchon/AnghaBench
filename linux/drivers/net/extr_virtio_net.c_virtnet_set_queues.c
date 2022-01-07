
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct virtnet_info {int dummy; } ;


 int _virtnet_set_queues (struct virtnet_info*,int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static int virtnet_set_queues(struct virtnet_info *vi, u16 queue_pairs)
{
 int err;

 rtnl_lock();
 err = _virtnet_set_queues(vi, queue_pairs);
 rtnl_unlock();
 return err;
}
