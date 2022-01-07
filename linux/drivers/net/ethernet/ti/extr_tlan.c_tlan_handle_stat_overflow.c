
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;


 int TLAN_RECORD ;
 int tlan_read_and_clear_stats (struct net_device*,int ) ;

__attribute__((used)) static u32 tlan_handle_stat_overflow(struct net_device *dev, u16 host_int)
{
 tlan_read_and_clear_stats(dev, TLAN_RECORD);

 return 1;

}
