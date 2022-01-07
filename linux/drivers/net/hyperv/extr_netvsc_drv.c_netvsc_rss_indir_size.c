
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int ITAB_NUM ;

__attribute__((used)) static u32 netvsc_rss_indir_size(struct net_device *dev)
{
 return ITAB_NUM;
}
