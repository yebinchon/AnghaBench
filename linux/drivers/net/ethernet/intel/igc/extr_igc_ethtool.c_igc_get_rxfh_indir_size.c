
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int IGC_RETA_SIZE ;

__attribute__((used)) static u32 igc_get_rxfh_indir_size(struct net_device *netdev)
{
 return IGC_RETA_SIZE;
}
