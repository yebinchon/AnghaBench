
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct airo_info {int proc_name; } ;


 int airo_entry ;
 int remove_proc_subtree (int ,int ) ;

__attribute__((used)) static int takedown_proc_entry( struct net_device *dev,
    struct airo_info *apriv )
{
 remove_proc_subtree(apriv->proc_name, airo_entry);
 return 0;
}
