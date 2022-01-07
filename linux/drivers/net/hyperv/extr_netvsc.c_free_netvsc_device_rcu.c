
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netvsc_device {int rcu; } ;


 int call_rcu (int *,int ) ;
 int free_netvsc_device ;

__attribute__((used)) static void free_netvsc_device_rcu(struct netvsc_device *nvdev)
{
 call_rcu(&nvdev->rcu, free_netvsc_device);
}
