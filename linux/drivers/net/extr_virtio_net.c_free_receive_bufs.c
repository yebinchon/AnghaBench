
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtnet_info {int dummy; } ;


 int _free_receive_bufs (struct virtnet_info*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static void free_receive_bufs(struct virtnet_info *vi)
{
 rtnl_lock();
 _free_receive_bufs(vi);
 rtnl_unlock();
}
